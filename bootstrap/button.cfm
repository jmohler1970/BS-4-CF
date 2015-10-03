<!---@ Description: Support for button. If you want to submit, use commandButton instead --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:button."; 
	
	

switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);

	param attributes.binding			= "";
	param attributes.disabled		= false;
	param attributes.dismiss			= false;
	param attributes.icon			= "";
	param attributes.iconAlign		= "left";
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains("button");;
	param attributes.key			= "";
	param attributes.lang			= "";
	param attributes.library			= "default";	// for icon
	param attributes.look			= "default";
	param attributes.outline			= false;
	param attributes.placeholder		= [];
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	param attributes.role			= "button";
	param attributes.size			= "";		// large, small, mini
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";
	param attributes.value			= "";


	variables.arAttrSeries = [];
	
	
	// We will be passing through HTML5 data-, Mouse Events, and Angular JS
	for(variables.myKey in attributes)	{
		if (left(variables.myKey, 5) == "data-" || left(variables.myKey, 2) == "on" || left(variables.myKey, 3) == "ng-")	{
			ArrayAppend(arAttrSeries, {key = variables.myKey, value = attributes[variables.myKey] });
			} // end if	
		}	// end for
		


	if (!application.Bootstrap.validLook.contains(attributes.look))	throw "This is an invalid look option";


	if (!attributes.processed) exit "exitTag";
	break;

case "end" :

	if(attributes.value != "")											thisTag.generatedContent = attributes.value;
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) 	thisTag.generatedContent = evaluate("caller.rc.#attributes.binding#");


											variables.result &= '<button type="button" class="btn btn-#encodeForHTMLAttribute(attributes.look.lcase())#';
	if(attributes.outline)						variables.result &= "-outline";
	if(attributes.size		!= "")				variables.result &= ' btn-#encodeForHTMLAttribute(attributes.size)#';
	if(attributes.styleClass	!= "")				variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';
											variables.result &= '"';
	// end class specification
	
	if(attributes.dismiss	!= "")				variables.result &= ' data-dismiss="#encodeForHTMLAttribute(attributes.dismiss)#"';
	if(attributes.keyExists("data-target"))			variables.result &= ' data-target="' & attributes['data-target'] & '"';
	if(attributes.keyExists("data-toggle"))			variables.result &= ' data-toggle="' & attributes['data-toggle'] & '"';
	if(attributes.id		!= "")				variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.lang		!= "")				variables.result &= ' lang="#encodeForHTMLAttribute(attributes.lang)#"';
		
	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #lcase(variables.myAttr.key)#="#encodeForHTMLAttribute(variables.myAttr.value)#"';
		
	if(attributes.role		!= "")				variables.result &= ' role="#encodeForHTMLAttribute(attributes.role)#"';
	if(attributes.style		!= "")				variables.result &= ' style="#encodeForCSS(attributes.style)#"';
	
	if(attributes.tooltip	!= "")				variables.result &= ' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")				variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")				variables.result &= ' data-toggle="tooltip"';
	
	if(attributes.disabled)						variables.result &= ' disabled="disabled"';
											variables.result &= '>';
								
	// space on end is not an accident							
	if (attributes.icon 	!= "" && attributes.iconAlign == "left")	{
											variables.result &= '<i class="#application.Bootstrap.IconLibrary[attributes.library]##encodeForHTMLAttribute(attributes.icon)#"></i> ';
											}		

	if(!attributes.isSafeHTML)					variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)					variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								


	
	// space at start is not an accident
	if (attributes.icon 		!= "" && attributes.iconAlign == "right")	{
											variables.result &= ' <i class="#application.Bootstrap.IconLibrary[attributes.library]##encodeForHTMLAttribute(attributes.icon)#"></i>';
											}		


											variables.result &= '</button>';


	thisTag.GeneratedContent = "";
	if (attributes.rendered)			writeOutput(variables.result);

	break;
	}


</cfscript>