<!---@ Description: Support for verbatim. It is recommeded that a context sensitive tag be used instead. This is similar to http://www.jsftoolbox.com/documentation/help/12-TagReference/core/f_verbatim.html --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:outputText."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();
 

     param attributes.processed		= true;
	param attributes.rendered 		= true;

     
		

     if (!attributes.processed) exit "exitTag";
     
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
     
     
	break;
     
case "end" :
     if(attributes?.binding	!= "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");

	
								
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);									
								
     if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
 </cfscript>