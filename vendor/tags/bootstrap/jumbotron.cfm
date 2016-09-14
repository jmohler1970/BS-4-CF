<!---@ Description: Support for Jumbotron --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:jumbotron."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
 
	
	param attributes.processed 		= true;
	param attributes.rendered 		= true; 

   

	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	
	
	break;
     
case "end" :
     
									variables.result &= variables.crlf;
									variables.result &= '<div class="jumbotron"';
	
									variables.result &= application.filterAttributes(attributes); 	
	
	if(attributes?.tight	== true)		variables.result &= ' style="margin : 0; padding-top : 0; padding-right : 0"';
									variables.result &= '>';
								
								
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);
							

									variables.result &= '</div><!-- /.jumbotron -->';
									variables.result &= variables.crlf;
											
     if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered ?: true)		writeOutput(variables.result);
     
	break;
	}
</cfscript>
