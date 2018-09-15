<!---@ Description: Support for td --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:td.";



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();


	param attributes.look			= "";
	param attributes.hidden			= "";
	param attributes.processed		= true; // unknown how to support
	param attributes.rendered 		= true; // removes content not actual td
	param attributes.styleClass		= "";
	param attributes.text			= "";
	param attributes.tooltipPosition	= "bottom";


	if(!ArrayContains(['','active','success','info','warning','danger'], attributes.look)) throw "tr tag has invalid contextual class option";

	variables.myClass = "";
	if(attributes?.text		!= "")		variables.myClass &= 'text-#attributes.text# ';
	if(attributes?.look		!= "")		variables.myClass &= '#lcase(attributes.look)# ';
	switch(attributes.hidden)	{
		case "md" :					variables.myClass &= 'hidden-xs hidden-sm  hidden-md ';	break;
		case "sm" :					variables.myClass &= 'hidden-xs hidden-sm ';				break;
		case "xs" :					variables.myClass &= 'hidden-xs ';						break;
		}


	if(attributes?.styleClass	!= "")	variables.myClass &= '#attributes.styleClass# ';


	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}


	break;

case "end" :


	if(variables.myClass	== "")				variables.result &= '<td';
	if(variables.myClass	!= "")				variables.result &= '<td class="#encodeForHTMLAttribute(variables.myClass)#"';
	
											variables.result &= application.filterAttributes(attr = attributes, tooltip = false);
											variables.result &= '>';
	
	if(attributes?.tooltip	!= "")				variables.result &=	'<span title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes?.tooltip	!= "")				variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes?.tooltip	!= "")				variables.result &= ' data-toggle="tooltip"';
	if(attributes?.tooltip	!= "")				variables.result &=	'>';
	
	
											variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);					
		
											
	if(attributes?.tooltip	!= "")				variables.result &= '</span>';
											variables.result &= '</td>';
											variables.result &= variables.crlf;
											
	if (attributes?.cacheid != "")				CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);											

	thisTag.GeneratedContent = "";
	writeOutput(variables.result);

	break;
	}


</cfscript>