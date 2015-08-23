<!---@ Description: Support for th --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:th.";



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);

	param attributes.binding		= "";
	param attributes.hidden		= "";
	param attributes.id			= "";
	param attributes.processed	= true; // unknown how to support
	param attributes.rendered 	= true; // removes content not actual th
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.text		= "";
	param attributes.tooltip		= ""; // It is attached to a span so that table layout does not get destroyed


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
	break;

case "end" :

	if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = xmlFormat(evaluate("caller.rc.#attributes.binding#"));

	if(variables.myClass 	== "")	variables.result &= '<th';
	if(variables.myClass 	!= "")	variables.result &= '<th class="#variables.myClass#"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';

	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #lcase(variables.myAttr.key)#="#variables.myAttr.value#"';


	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';
								variables.result &= '>';
	if(attributes.tooltip    != "")	variables.result &=	'<span title="#attributes.tooltip#">';
	if(attributes.rendered)			variables.result &= thisTag.GeneratedContent; // pass through of content
	if(attributes.tooltip    != "")	variables.result &=	 '</span>';
								variables.result &= '</th>';


	thisTag.GeneratedContent = "";
	writeOutput(variables.result);

	break;
	}


</cfscript>