<!---@ Description: Support for p --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:p."; 



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);

	param attributes.binding			= "";
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains("p");
	param attributes.key			= "";
	param attributes.lead			= false;
	param attributes.placeholder		= [];
	param attributes.processed		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	param attributes.static			= false;
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.text			= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";


	variables.myClass = "";
	if(attributes.lead == "lead")		variables.lead = true;
	if(attributes.lead)				variables.result &= 'lead ';
	if(attributes.static)			variables.result &= 'form-control-static ';
	if(attributes.text		!= "")	variables.myClass &= 'text-#attributes.text# ';
	if(attributes.styleClass	!= "")	variables.myClass &= '#attributes.styleClass# ';

	variables.arAttrSeries = [];
	
	
	// We will be passing through HTML5 data-, Mouse Events, and Angular JS
	for(variables.myKey in attributes)	{
		if (left(variables.myKey, 5) == "data-" || left(variables.myKey, 2) == "on" || left(variables.myKey, 3) == "ng-")	{
			ArrayAppend(arAttrSeries, {key = variables.myKey, value = attributes[variables.myKey] });
			} // end if	
		}	// end for


	if (!attributes.processed) exit "exitTag";
	break;

case "end" :
	if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");

								variables.result &= variables.crlf;
	if(variables.myClass	== "")	variables.result &= '<p';
	if(variables.myClass	!= "")	variables.result &= '<p class = "#encodeForHTMLAttribute(variables.myClass)#"';


	if(attributes.id		!= "")	variables.result &= ' id = "#encodeForHTMLAttribute(attributes.id)#"';
	
	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #variables.myAttr.key.lcase()#="#encodeForHTMLAttribute(variables.myAttr.value)#"';	
	
	if(attributes.style		!= "")	variables.result &= ' style = "#encodeForCSS(attributes.style)#"';
	if(attributes.tooltip	!= "")	variables.result &=	' title = "#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-toggle="tooltip"';
								variables.result &= '>';
								
	if(!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								
							

								variables.result &= '</p>';
								variables.result &= variables.crlf;



	thisTag.GeneratedContent = "";
	if (attributes.rendered)			writeOutput(variables.result);

	break;
	}
</cfscript>