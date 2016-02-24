<!---@ Description: Support for a tags which look like buttons --->
<!---@ Also see: http://www.jsftoolbox.com/documentation/help/12-TagReference/html/h_commandLink.html --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:commandLink."; 



switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();


	param attributes.iconAlign		= "left";
	param attributes.isSafeHTML		= application?.Bootstrap?.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.library			= "default";	// for icon
	param attributes.look	 		= "default";
	param attributes.processed 		= true;
	param attributes.profile			= application?.Bootstrap?.profile;
	param attributes.rendered 		= true;
	param attributes.role			= "button";
	param attributes.throwOnError		= application?.Bootstrap?.throwOnError;
	param attributes.tooltipPosition 	= "bottom";
	
	
	// Patch this
	if(attributes?.disabled == "disabled")	attributes.disabled = true;
	
	
	// We will be passing through HTML5 data-, Mouse Events, and Angular JS
	variables.arAttrSeries = [];
	
	for(variables.myKey in attributes)	{
		if (left(variables.myKey, 5) == "data-" || left(variables.myKey, 2) == "on" || left(variables.myKey, 3) == "ng-")	{
			ArrayAppend(arAttrSeries, {key = variables.myKey, value = attributes[variables.myKey] });
			} // end if	
		}	// end for


	// no target of any kind was set AND this is not an anchor
	if ((attributes?.action != "" || attributes?.href == "") && attributes?.id == "")	attributes.href = attributes.action;




	if (!application.Bootstrap.validLook.contains(attributes.look))	throw "This #attributes.look# is an invalid look option";

	
	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	
	break;

case "end" :

	
	if (attributes?.value	!= "")										thisTag.generatedContent = attributes.value;	
	if (attributes?.binding	!= "" && isDefined("caller.rc.#attributes.binding#")) 	thisTag.generatedContent = evaluate("caller.rc.#attributes.binding#");
	if (attributes?.key 	!= "")		{
																	thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes?.placeholder);
																	attributes.isSafeHTML 	= true;				
																	}	
	if (attributes?.tooltipKey != "")										attributes.tooltip 		= application.geti18n(attributes.key, attributes?.tooltipPlaceholder);

	if (attributes.look 	== 'link')			variables.result &= '<a class="';				// we don't apply btn so that link look like links
	if (attributes.look 	!= 'link')			variables.result &= '<a class="btn btn-#encodeForHTMLAttribute(attributes.look.lcase())#';
	if (attributes?.outline	== true)				variables.result &= "-outline";
	if (attributes?.size 	!= "")				variables.result &= ' btn-#encodeForHTMLAttribute(attributes.size)#'; // space needed
	if (attributes?.styleClass != "")				variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';
		
	if (attributes?.dropdown != "")   				variables.result &= ' datatoggle ';
	
											variables.result &= '" '; // end class
	if (attributes?.disabled == true)				variables.result &= 'disabled="disabled" ';
											

	if (attributes?.href	!= "")				variables.result &= ' href="#attributes.href#"';
	if (attributes?.id		!= "")				variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';

	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #lcase(variables.myAttr.key)#="#encodeForHTMLAttribute(variables.myAttr.value)#"';


	if (attributes?.rel		!= "")				variables.result &= ' rel = "#encodeForHTMLAttribute(attributes.rel)#"';
	if (attributes?.role	!= "")				variables.result &= ' role = "#encodeForHTMLAttribute(attributes.role)#"';
	if (attributes?.target	!= "")				variables.result &= ' target = "#encodeForHTMLAttribute(attributes.target)#"';
	if (attributes?.tooltip  != "")				variables.result &= ' title = "#encodeForHTMLAttribute(attributes.tooltip)#"';
	if (attributes?.style    != "")				variables.result &= ' style = "#encodeForHTMLAttribute(attributes.style)#"';

	if (attributes?.dropdown == true)				variables.result &= ' data-toggle="dropdown"';
											variables.result &= '>';
	if (attributes?.bold 	== true)				variables.result &= '<b>';

	// space on end is not an accident							
	if (attributes?.icon 		!= "" && attributes.iconAlign == "left")	{
											variables.result &= '<i class="#application.Bootstrap.IconLibrary[attributes.library]##encodeForHTMLAttribute(attributes.icon)#"></i> ';
											}
	
	if(!attributes.isSafeHTML)					variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)					variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								


	
	// space at start is not an accident
	if (attributes?.icon 	!= "" && attributes.iconAlign == "right")	{
											variables.result &= ' <i class="#application.Bootstrap.IconLibrary[attributes.library]##attributes.icon#"></i>';
											}			

	if (attributes?.dropdown == true)				variables.result &= '<span class="caret"></span>';
	if (attributes?.bold	== true)				variables.result &= '</b>';										
											variables.result &= '</a>';
											
	if (attributes?.cacheid != "")				CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);										


	thisTag.GeneratedContent = ""; // This tag does not have pass through
	if (attributes.rendered)						writeOutput(variables.result);

	break;
	}

 
</cfscript>