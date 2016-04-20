<!---@ Description: Support for tr --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:tr."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();
  
	param attributes.look			= "";
	param attributes.processed		= true;
	param attributes.rendered 		= true;

	
	if(!ArrayContains(['','active','success','info','warning','danger'],attributes.look)) throw "tr tag has invalid contextual class option";
	
	variables.myClass = "";
     if(attributes?.look			!= "")	variables.myClass &= '#lcase(attributes.look)# ';	
     if(attributes?.styleClass	!= "")	variables.myClass &= '#attributes.styleClass# ';
     

	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
     
	
	break;
     
case "end" :

	if(variables.myClass 	== "")			variables.result &= '<tr';
	if(variables.myClass 	!= "")			variables.result &= '<tr class="#encodeForHTMLAttribute(variables.myClass)#"';
	
										variables.result &= application.filterAttributes(attributes);

										variables.result &= '>';
										variables.result &= variables.crlf;

										
										variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);	
										
										
										variables.result &= variables.crlf;
										variables.result &= '</tr>';
										variables.result &= variables.crlf;
     
	if (attributes?.cacheid != "")			CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent = "";
	if (attributes.rendered)					writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>