<!---@ Description: Support for th --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:th.";



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();

	param attributes.binding			= "";
	param attributes.cacheid			= "";
	param attributes.hidden			= "";
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.key			= "";
	param attributes.placeholder		= [];
	param attributes.processed		= true; // unknown how to support
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true; // removes content not actual th
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.text			= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.tooltip			= ""; // It is attached to a span so that table layout does not get destroyed
	param attributes.tooltipPosition	= "bottom";


	variables.myClass = "";
	if(attributes.text		!= "")		variables.myClass &= 'text-#attributes.text# ';
	switch(attributes.hidden)	{
		case "md" :					variables.myClass &= 'hidden-xs hidden-sm  hidden-md ';	break;
		case "sm" :					variables.myClass &= 'hidden-xs hidden-sm ';				break;
		case "xs" :					variables.myClass &= 'hidden-xs ';						break;
		}

	if(attributes.styleClass	!= "")		variables.myClass &= '#attributes.styleClass# ';


	// We will be passing through HTML5 data-, Mouse Events, and Angular JS
	variables.arAttrSeries = [];
	
	for(variables.myKey in attributes)	{
		if (left(variables.myKey, 5) == "data-" || left(variables.myKey, 2) == "on" || left(variables.myKey, 3) == "ng-")	{
			ArrayAppend(arAttrSeries, {key = variables.myKey, value = attributes[variables.myKey] });
			} // end if	
		}	// end for


	// if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes.key & " " & attributes.cacheid;
	if (attributes.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
		
	break;

case "end" :

	if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");
	if(attributes.key 		!= "" )		{
																	thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes.placeholder);
																	attributes.isSafeHTML 	= true;				
																	}	

	if(variables.myClass 	== "")				variables.result &= '<th';
	if(variables.myClass 	!= "")				variables.result &= '<th class="#encodeForHTMLAttribute(variables.myClass)#"';
	if(attributes.id		!= "")				variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';

	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #lcase(variables.myAttr.key)#="#encodeForHTMLAttribute(variables.myAttr.value)#"';


	if(attributes.style		!= "")				variables.result &= ' style="#encodeForCSS(attributes.style)#"';
											variables.result &= '>';
	if(attributes.tooltip    != "")				variables.result &=	'<span title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")				variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")				variables.result &= ' data-toggle="tooltip"';
	if(attributes.tooltip    != "")				variables.result &=	'>';
	
	
	if(attributes.rendered && !attributes.isSafeHTML)	variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if(attributes.rendered &&  attributes.isSafeHTML)	variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								
	
	
	if(attributes.tooltip    != "")				variables.result &=	'</span>';
											variables.result &= '</th>';


	if (attributes.cacheid != "")					CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = "";
	writeOutput(variables.result);

	break;
	}


</cfscript>