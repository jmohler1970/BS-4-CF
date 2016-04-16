<!---@ Description: Support for well --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:well."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();
  

	param attributes.processed	 	= true;
	param attributes.rendered 		= true;


	
	
	
	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
     
	
	break;
     
case "end" :
	if(attributes?.key 		!= "" )		{
									thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes?.placeholder);
									attributes.isSafeHTML 	= true;				
									}
  
									variables.result &= crlf;
	   								variables.result &= '<div class="well';
	if(attributes?.size			!= "")	variables.result &= ' well-#encodeForHTMLAttribute(attributes.size)#';		
	if(attributes?.styleClass	!= "")	variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';		
	   								variables.result &= '"';
	   								
	   								variables.result &= application.filterAttributes(attributes);
	   								
									variables.result &= '>';
								
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);

									variables.result &= '</div><!-- /.well -->';
									variables.result &= crlf;
								
	if (attributes?.cacheid 		!= "")	CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);						
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>