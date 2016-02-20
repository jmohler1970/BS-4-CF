<!---@ Description: Support for submit button. If you don't want to submit, use button instead --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:commandButton."; 
	
	

switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();

	param attributes.ajax			= ""; // reserved for future use
	param attributes.binding			= "";
	param attributes.cacheid			= "";
	param attributes.disabled		= false;
	param attributes.icon			= "";
	param attributes.iconAlign		= "left";
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.key			= "";
	param attributes.lang			= "";
	param attributes.library			= "default";	// for icon
	param attributes.look			= "default";
	param attributes.name			= "";
	param attributes.outline			= false;
	param attributes.placeholder		= [];
	param attributes.processed		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered		= true;
	param attributes.rel			= "";
	param attributes.role			= "button";
	param attributes.size			= "";		// large, small, mini
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";
	param attributes.type			= "submit";	// as opposed to reset, use button for buttons
	param attributes.value			= "";


	// Patch this
	if(attributes.disabled == "disabled")	attributes.disabled = true;


	variables.arAttrSeries = [];


	// We will be passing through HTML5 data-, Mouse Events, and Angular JS
	for(variables.myKey in attributes)	{
		if (left(variables.myKey, 5) == "data-" || left(variables.myKey, 2) == "on" || left(variables.myKey, 3) == "ng-")	{
			ArrayAppend(arAttrSeries, {key = variables.myKey, value = attributes[variables.myKey] });
			} // end if	
		}	// end for


	if (!application.Bootstrap.validLook.contains(attributes.look))	throw "This is an invalid look option";
		

	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes.key & " " & attributes.cacheid;
	if (attributes.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	
	
	break;

case "end" :

	if(attributes.value != "")											thisTag.generatedContent = attributes.value;
	if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) 	thisTag.generatedContent = evaluate("caller.rc.#attributes.binding#");
	if(attributes.key 		!= "" )		{
																	thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes.placeholder);
																	attributes.isSafeHTML 	= true;				
																	}	
	
											variables.result &= '<button type="#encodeForHTMLAttribute(attributes.type)#" class="btn btn-#attributes.look.lcase()#';
	if(attributes.outline)						variables.result &= "-outline";
	if(attributes.size		!= "")				variables.result &= ' btn-#attributes.size#';
	if(attributes.styleClass	!= "")				variables.result &= ' #attributes.styleClass#';
											variables.result &= '"';
	// end class specification

	if(attributes.id		!= "")				variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.lang		!= "")				variables.result &= ' lang="#encodeForHTMLAttribute(attributes.lang)#"';
	if(attributes.name		!= "")				variables.result &= ' name="#encodeForHTMLAttribute(attributes.name)#"';

	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #lcase(variables.myAttr.key)#="#variables.myAttr.value#"';

	if(attributes.role		!= "")				variables.result &= ' role="#encodeForHTMLAttribute(attributes.role)#"';
	if(attributes.style		!= "")				variables.result &= ' style="#encodeForHTMLAttribute(attributes.style)#"';
	if(attributes.tooltip	!= "")				variables.result &= ' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.disabled)						variables.result &= ' disabled="disabled"';
											variables.result &= '>';

	// space on end is not an accident							
	if (attributes.icon 		!= "" && attributes.iconAlign == "left")	{
											variables.result &= '<i class="#application.Bootstrap.IconLibrary[attributes.library]##attributes.icon#"></i> ';
											}
											
	if(!attributes.isSafeHTML)					variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)					variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								


	// space at start is not an accident
	if (attributes.icon 		!= "" && attributes.iconAlign == "right")	{
											variables.result &= ' <i class="#application.Bootstrap.IconLibrary[attributes.library]##attributes.icon#"></i>';
											}		


											variables.result &= '</button>';

	if (attributes.cacheid != "")					CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = "";
	if (attributes.rendered)						writeOutput(variables.result);

	break;
	}


</cfscript>