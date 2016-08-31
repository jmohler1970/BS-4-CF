<!---@ Description: Support for h3 --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:h3."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
	  

	param attributes.isSafeHTML		= application?.Bootstrap?.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.processed 		= true;
	param attributes.profile			= application?.Bootstrap?.profile;
	param attributes.rendered	 	= true; 
	param attributes.throwOnError		= application?.Bootstrap?.throwOnError;


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

	if(attributes?.value	!= "")		{ thisTag.GeneratedContent = attributes.value; }


	if(attributes?.key 		!= "" )		{
																	thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes?.placeholder);
																	attributes.isSafeHTML 	= true;				
																	}	
     
     
     if(variables.myClass	== "")		variables.result &= '<h3';
	if(variables.myClass	!= "")		variables.result &= '<h3 class="#variables.myClass.encodeForHTMLAttribute()#"';
	
	
									variables.result &= application.filterAttributes(attributes);
           
									variables.result &= '>';
	
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);
	
									variables.result &= '</h3>' & variables.crlf;
     

     if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
    
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
 </cfscript>