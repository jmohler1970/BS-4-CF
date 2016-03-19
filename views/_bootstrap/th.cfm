<!---@ Description: Support for th --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:th.";



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();


	attributes.hidden				= "";
	param attributes.processed		= true; // unknown how to support
	param attributes.rendered 		= true; // removes content not actual th
	param attributes.tooltipPosition	= "bottom";


	variables.myClass = "";
	if(attributes?.text		!= "")		variables.myClass &= 'text-#attributes.text# ';
	
	
	switch(attributes.hidden)	{
		case "md" :					variables.myClass &= 'hidden-xs hidden-sm  hidden-md ';	break;
		case "sm" :					variables.myClass &= 'hidden-xs hidden-sm ';				break;
		case "xs" :					variables.myClass &= 'hidden-xs ';						break;
		}

	if(attributes?.styleClass	!= "")	variables.myClass &= '#attributes.styleClass# ';



	// if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
		
	break;

case "end" :

	if(attributes?.binding	!= "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");



	if(variables.myClass 	== "")				variables.result &= '<th';
	if(variables.myClass 	!= "")				variables.result &= '<th class="#encodeForHTMLAttribute(variables.myClass)#"';
	
											variables.result &= application.filterAttributes(attr = attributes, tooltip = false);		
											variables.result &= '>';

	if(attributes?.tooltip   != "")				variables.result &=	'<span title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes?.tooltip	!= "")				variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes?.tooltip	!= "")				variables.result &= ' data-toggle="tooltip"';
	if(attributes?.tooltip   != "")				variables.result &=	'>';
	
	
											variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);					
	
	
	if(attributes?.tooltip    != "")				variables.result &=	'</span>';
											variables.result &= '</th>';


	if (attributes?.cacheid != "")				CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = "";
	writeOutput(variables.result);

	break;
	}


</cfscript>