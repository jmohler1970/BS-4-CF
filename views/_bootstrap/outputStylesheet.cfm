<!---@ Description: Support for outputStylesheet --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:outputStylesheet."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();
	
	variables.parentTag = getBaseTagList().listGetAt(2).lcase();
	variables.validTag = ["cf_head"];
	
	if(!variables.validTag.contains(variables.parentTag) )	{
		throw "This tag must be in #variables.validTag.toList()#. It appears to be #variables.parentTag#";
		}
 

	param attributes.library			= "default";
	param attributes.processed 		= true;
	param attributes.rel 			= "stylesheet";
	param attributes.rendered	 	= true;
	param attributes.type			= "text/css";
     
	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	
	
	break;
     
case "end" :     
     								variables.result &= crlf;
	   								variables.result &= '<link type="#attributes.type#"';
	   								variables.result &= ' href="' & application?.Bootstrap?.StylesheetLibrary[attributes.library] & attributes?.name & '"';
	if(attributes?.media	!= "")		variables.result &= ' media="#attributes.media#"';
									variables.result &= ' rel="#attributes.rel#"';              
									variables.result &= '>';
								
									variables.result &= thisTag.GeneratedContent.trim();
								


	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>