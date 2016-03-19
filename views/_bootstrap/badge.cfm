<!---@ Description: Support for badge --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:badge."; 



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();


	param attributes.look			= "warning";
	param attributes.processed 		= true;
	param attributes.rendered 		= true;



	if (attributes.KeyExists("text")) throw "attributes.text is an invalid option. Don't even think of using it";

	if (!application?.Bootstrap?.validLook.contains(attributes?.look))	throw "This is an invalid look option";
	



	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	
	break;

case "end" :


	if(attributes?.value	!= "")										thisTag.generatedContent = attributes.value;
     if(attributes?.binding	!= "" && isDefined("caller.rc.#attributes.binding#")) 	thisTag.generatedContent = evaluate("caller.rc.#attributes.binding#");


									variables.result &= '<span class = "badge badge-#attributes.look.lcase().encodeForHTMLAttribute()#"';
	
									variables.result &= application.filterAttributes(attributes);
           
									variables.result &= '>';
	
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);							


									variables.result &= '</span>';


	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = ""; // This tag does not have pass through

	if (attributes.rendered)				writeOutput(variables.result);

	break;
	}


</cfscript>