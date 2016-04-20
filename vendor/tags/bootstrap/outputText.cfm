<!---@ Description: Support for outputText. The wraps content in span. This is similar to http://www.jsftoolbox.com/documentation/help/12-TagReference/html/h_outputText.html --->




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
     param attributes.usespan			= true;
     
     
     
     variables.myClass = "";
	if(attributes?.text			!= "")	variables.myClass &= 'text-#attributes.text# ';		
	if(attributes?.styleClass	!= "")	variables.myClass &= '#attributes.styleClass# ';		


     if (!attributes.processed) exit "exitTag";
     
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
     
     
	break;
     
case "end" :
	if(attributes?.value 	!= "")			thisTag.generatedContent = attributes.value;
     
										variables.result &= variables.crlf;
	if (attributes.usespan)	{											
		if(variables.myClass == "")			variables.result &= '<span';
		if(variables.myClass != "")			variables.result &= '<span class="#encodeForHTMLAttribute(variables.myClass)#"';
		
										variables.result &= application.filterAttributes(attributes);						
				
										variables.result &= '>';
		} // end usespan
								
										variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);							

	if (attributes?.usespan 	== true)			variables.result &= '</span>';
										variables.result &= variables.crlf;
								
     if (attributes?.cacheid != "")			CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
 </cfscript>