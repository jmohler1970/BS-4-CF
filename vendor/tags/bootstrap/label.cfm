<!---@ Description: Support for label --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:label."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
  

	param attributes.isSafeHTML		= application?.Bootstrap?.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.look 			= "default";
	param attributes.processed 		= true;
	param attributes.profile			= application?.Bootstrap?.profile;
	param attributes.rendered 		= true;
	param attributes.throwOnError		= application?.Bootstrap?.throwOnError;
	
	
	if (attributes.keyExists("text")) 						throw "attributes.text is an invalid option. Don't even think of using it";
	
	
     if (!attributes.processed) exit "exitTag";
     
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
     
     break;
     
case "end" :     
     
     if(attributes?.value != "")											thisTag.generatedContent = attributes.value;
     
	
									variables.result &= '<span class="label label-#encodeForHTMLAttribute(attributes.look.lcase())#';
	if(attributes?.styleClass	!= "")	variables.result &= ' #attributes.styleClass# ';
									variables.result &= '"';
									
									
									variables.result &= application.filterAttributes(attributes);
 	
									variables.result &= '>';
								
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);						
							

									variables.result &= '</span>';
   
	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = ""; 		// This tag does not have pass through
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>