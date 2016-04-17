<!---@ Description: Support for dropmenu. This expects navLink inside --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:dropMenu."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
	
	variables.parentTag = getBaseTagList().listGetAt(2).lcase();
	variables.validTag = ["cf_buttongroup","cf_navbarlinks","cf_tabview"];
	
	if(!variables.validTag.contains(variables.parentTag) )	{
		throw "This tag must be in #ArrayToList(variables.validTag)#. It appears to be #variables.parentTag#";
		}
 

	param attributes.look			= "default";
	param attributes.processed	 	= true;
	param attributes.rendered		= true;
	param attributes.role			= "button";
	
	if (!attributes.processed) exit "exitTag";
	
	if(variables.parentTag == "cf_navbarlinks") attributes.look = "tab";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	
	break;
     
case "end" :



	if (attributes.look == "tab")			variables.result &= crlf & '<a class="dropdown-toggle" ';
	if (attributes.look != "tab")			variables.result &= crlf & '<a class="btn btn-#encodeForHTMLAttribute(attributes.look.lcase())# dropdown-toggle" ';
	
									variables.result &= 'data-toggle="dropdown" role="#EncodeForHTMLAttribute(attributes.role)#">#EncodeForHTML(attributes?.value)# <b class="caret"></b></a>';  
									variables.result &= crlf & '<ul class="dropdown-menu" role="menu">';
	
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);							
	
									variables.result &= crlf & '</ul>';
									variables.result &= crlf & '<!-- /.end dropdown -->';
	
	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
	
     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>