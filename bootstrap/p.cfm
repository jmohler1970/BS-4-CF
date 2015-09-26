<!---@ Description: Support for p --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:p."; 



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);

	param attributes.binding		= "";
	param attributes.id			= "";
	param attributes.isSafeHTML	= true;
	param attributes.lead		= false;
	param attributes.processed	= true;
	param attributes.rendered 	= true;
	param attributes.static		= false;
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.text		= "";
	param attributes.tooltip		= "";
	param attributes.tooltipPosition	= "bottom";


	variables.myClass = "";
	if(attributes.lead == "lead")		variables.lead = true;
	if(attributes.lead)				variables.result &= 'lead ';
	if(attributes.static)			variables.result &= 'form-control-static ';
	if(attributes.text		!= "")	variables.myClass &= 'text-#attributes.text# ';
	if(attributes.styleClass	!= "")	variables.myClass &= '#attributes.styleClass# ';




	if (!attributes.processed) exit "exitTag";
	break;

case "end" :
	if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");

								variables.result &= variables.crlf;
	if(variables.myClass	== "")	variables.result &= '<p';
	if(variables.myClass	!= "")	variables.result &= '<p class = "#encodeForHTMLAttribute(variables.myClass)#"';


	if(attributes.id		!= "")	variables.result &= ' id = "#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.style		!= "")	variables.result &= ' style = "#encodeForCSS(attributes.style)#"';
	if(attributes.tooltip	!= "")	variables.result &=	' title = "#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-toggle="tooltip"';
								variables.result &= '>';

	if(!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim()); // pass through of content
	if( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean


								variables.result &= '</p>';
								variables.result &= variables.crlf;



	thisTag.GeneratedContent = "";
	if (attributes.rendered)			writeOutput(variables.result);

	break;
	}
</cfscript>