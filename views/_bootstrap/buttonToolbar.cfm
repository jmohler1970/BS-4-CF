<!---@ Description: Support for buttonToolbar --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:buttonToolbar."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
 

	param attributes.processed 		= true;
	param attributes.rendered		= true;


	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	
	
	break;
     
case "end" :
  
								variables.result &= '<div class="btn-toolbar';
								variables.result &= '"';
	   							
								variables.result &= application.filterAttributes(attributes);
        
								variables.result &= '>';
			
								variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);

						
								variables.result &= '</div><!-- /.btn-toolbar -->';
     
     if (attributes?.cacheid != "")	CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
	thisTag.GeneratedContent = "";
	if (attributes.rendered)			writeOutput(variables.result);
    
 	break;
	}
 </cfscript>