<!---@ Description: Support for head. The real strenth in this tag comes from how it interacts with outputScript and outputStyleSheet --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:head"; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :
	
	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();

	param attributes.isSafeHTML		= application?.Bootstrap?.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.processed 		= true;
	param attributes.profile			= application?.Bootstrap?.profile;
	param attributes.rendered 		= true;
	param attributes.throwOnError		= application?.Bootstrap?.throwOnError;

	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	
	break;
case "end" :   
	
	if(attributes?.key 		!= "" )						{
													attributes.title		= application.geti18n(attributes.key, attributes?.placeholder);
													attributes.isSafeHTML 	= true;				
													}	

	if(attributes?.title != "")							variables.result &= "<title>";
	if(attributes?.title != "" && !attributes.isSafeHTML)		variables.result &= getSafeHTML(attributes.title.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if(attributes?.title != "" &&  attributes.isSafeHTML)		variables.result &= attributes.title.trim(); // warning content must already be clean								
	if(attributes?.title != "")							variables.result &= "</title>";
	
													variables.result &= thisTag.GeneratedContent.trim();
	
	if (attributes?.cacheid != "")						CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
		
	thisTag.GeneratedContent = "";
	if (attributes.rendered)								writeOutput(variables.result);	

 	break;
	}
 </cfscript>
 
 