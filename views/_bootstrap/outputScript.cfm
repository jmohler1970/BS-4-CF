<!---@ Description: Support for b:outputScript --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:outputScript."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
	
	
	variables.parentTag = getBaseTagList().listGetAt(2).lcase();
	variables.validTag = ["cf_head"];
	
	if(!variables.validTag.contains(variables.parentTag) )	{
		throw "This tag must be in #variables.validTag.toList()#. It appears to be #variables.parentTag#";
		}
	
	param attributes.cacheid			= "";  
	param attributes.library			= "default";
	param attributes.name			= "";		// if name is blank, the library better have complete target
	param attributes.processed 		= true;
	param attributes.rendered 		= true;
	param attributes.type			= "application/javascript";
     
	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes.key & " " & attributes.cacheid;
	if (attributes.cacheid != "" && cacheidExists(variables.fullcacheid) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullcacheid));
							exit "exitTag";
							}
	
	
	break;
     
case "end" :     
     								variables.result &= crlf;
	   								variables.result &= '<script ';
	   								variables.result &= ' src="' & application.Bootstrap.ScriptLibrary[attributes.library] & attributes.name & '"';
									variables.result &= ' type="#encodeForHTMLAttribute(attributes.type)#"';              
									variables.result &= '>';
								
									variables.result &= thisTag.GeneratedContent.trim();
								
									variables.result &= '</script>';
								

	if (attributes.cacheid != "")			CachePut(variables.fullCacheid, variables.result);
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>