<!---@ Description: Support for Glyphicons --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:icon."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
  


	param attributes.library			= "default";
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

	if (attributes?.addon	!= "")		variables.result &= '<span class="input-group-addon">';
	
	
	   								variables.result &= '<i class="#application?.Bootstrap?.IconLibrary[attributes.library]##encodeForHTMLAttribute(attributes?.name)#';
	if (attributes?.look 	!= "")		variables.result &= ' text-#encodeForHTMLAttribute(attributes.look.lcase())#';
	if (attributes?.size 	!= "")		variables.result &= ' fa-#encodeForHTMLAttribute(attributes.size)#';
	if (attributes?.spin	!= "")		variables.result &= ' fa-spin';
	if (attributes?.styleClass != "") 		variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';  							
	   								variables.result &= '"';
	   								
									variables.result &= application.filterAttributes(attributes); 								
	
									variables.result &= '></i>';
	if (attributes?.addon	!= "")		variables.result &= '</span>';
     
     if (attributes?.cacheid	!= "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent	= "";
     if (attributes.rendered)				writeOutput(variables.result);
          
          
	break;
	
	}
     
 
</cfscript>