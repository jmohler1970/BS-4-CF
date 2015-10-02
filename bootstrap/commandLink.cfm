<!---@ Description: Support for a tags which look like buttons --->
<!---@ Also see: http://www.jsftoolbox.com/documentation/help/12-TagReference/html/h_commandLink.html --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:commandLink."; 



switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);


	param attributes.action			= "";	// powered by application.Bootstrap.actionRoot;
	param attributes.binding			= "";
	param attributes.disabled		= false;
	param attributes.dropdown		= false;
	param attributes.href			= "";	// any target
	param attributes.icon			= "";
	param attributes.iconAlign		= "left";
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains("commandLink");
	param attributes.library			= "default";	// for icon
	param attributes.look	 		= "default";
	param attributes.outline			= false;
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rel			= "";
	param attributes.rendered 		= true;
	param attributes.role			= "button";
	param attributes.size			= "";
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.target			= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.tooltip			= "";
	param attributes.tooltipPosition 	= "bottom";
	param attributes.value			= "";
	
	
	// Patch this
	if(attributes.disabled == "disabled")	attributes.disabled = true;
	
	
	// We will be passing through HTML5 data-, Mouse Events, and Angular JS
	variables.arAttrSeries = [];
	
	for(variables.myKey in attributes)	{
		if (left(variables.myKey, 5) == "data-" || left(variables.myKey, 2) == "on" || left(variables.myKey, 3) == "ng-")	{
			ArrayAppend(arAttrSeries, {key = variables.myKey, value = attributes[variables.myKey] });
			} // end if	
		}	// end for


	if (!application.Bootstrap.validLook.contains(attributes.look))	throw "This #attributes.look# is an invalid look option";

	
	if (!attributes.processed) exit "exitTag";
	break;

case "end" :

	
	if (attributes.value != "")											thisTag.generatedContent = attributes.value;	
	if (attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) 	thisTag.generatedContent = evaluate("caller.rc.#attributes.binding#");

	// no target of any kind was set AND this is not an anchor
	if ((attributes.action != "" || attributes.href == "") && attributes.id == "")	attributes.href = application.Bootstrap.actionRoot & attributes.action;

	if (attributes.look == 'link')					variables.result &= '<a class="';				// we don't do anything special so that link look like links
	if (attributes.look != 'link')					variables.result &= '<a class="btn btn-#encodeForHTMLAttribute(attributes.look.lcase())#';
	if (attributes.outline)						variables.result &= "-outline";
	if (attributes.size 		!= "")				variables.result &= ' btn-#encodeForHTMLAttribute(attributes.size)# '; // space needed
	if (attributes.styleClass != "")				variables.result &= '#encodeForHTMLAttribute(attributes.styleClass)#';
		
	if (attributes.dropdown)   					variables.result &= 'datatoggle ';
	
											variables.result &= '" '; // end class
	if (attributes.disabled)						variables.result &= 'disabled="disabled" ';
											

	if (attributes.href		!= "")				variables.result &= ' href="#attributes.href#"';
	if (attributes.id		!= "")				variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';

	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #lcase(variables.myAttr.key)#="#encodeForHTMLAttribute(variables.myAttr.value)#"';


	if (attributes.rel		!= "")				variables.result &= ' rel = "#encodeForHTMLAttribute(attributes.rel)#"';
	if (attributes.role		!= "")				variables.result &= ' role = "#encodeForHTMLAttribute(attributes.role)#"';
	if (attributes.target	!= "")				variables.result &= ' target = "#encodeForHTMLAttribute(attributes.target)#"';
	if (attributes.tooltip   != "")				variables.result &= ' title = "#encodeForHTMLAttribute(attributes.tooltip)#"';
	if (attributes.style    	!= "")				variables.result &= ' style = "#encodeForHTMLAttribute(attributes.style)#"';

	if (attributes.dropdown)						variables.result &= ' data-toggle="dropdown"';
											variables.result &= '>';

	// space on end is not an accident							
	if (attributes.icon 		!= "" && attributes.iconAlign == "left")	{
											variables.result &= '<i class="#application.Bootstrap.IconLibrary[attributes.library]##encodeForHTMLAttribute(attributes.icon)#"></i> ';
											}
	
	if(!attributes.isSafeHTML)					variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)					variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								


	
	// space at start is not an accident
	if (attributes.icon 		!= "" && attributes.iconAlign == "right")	{
											variables.result &= ' <i class="#application.Bootstrap.IconLibrary[attributes.library]##attributes.icon#"></i>';
											}			

	if (attributes.dropdown)						variables.result &= '<span class="caret"></span>';
											variables.result &= '</a>';


	thisTag.GeneratedContent = ""; // This tag does not have pass through
	if (attributes.rendered)			writeOutput(variables.result);

	break;
	}

 
</cfscript>