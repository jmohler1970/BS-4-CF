<!---@ Description: Support for outputText. The wraps content in span. This is similar to http://www.jsftoolbox.com/documentation/help/12-TagReference/html/h_outputText.html --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:outputText."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();
 
	param attributes.cacheid			= "";
	param attributes.binding			= "";
     param attributes.id				= "";
     param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.key			= "";
	param attributes.placeholder		= [];
     param attributes.processed		= true;
     param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.text			= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
     param attributes.tooltip			= "";
     param attributes.tooltipPosition	= "bottom";
     param attributes.usespan			= true;
	param attributes.value			= "";
     
     
     
     variables.myClass = "";
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
     
	variables.fullCacheid = variables.tagStack[1] & " " & attributes.key & " " & attributes.cacheid;
	if (attributes.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
     
     
	break;
     
case "end" :
	if(attributes.value 	!= "")										thisTag.generatedContent = attributes.value;
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");
     if(attributes.key 		!= "" )		{
																	thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes.placeholder);
																	attributes.isSafeHTML 	= true;				
																	}	
	
												variables.result &= variables.crlf;
	if (attributes.usespan)	{											
		if(variables.myClass == "")		variables.result &= '<span';
		if(variables.myClass != "")		variables.result &= '<span class="#encodeForHTMLAttribute(variables.myClass)#"';							
				
		if(attributes.id != "")		variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	
	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #variables.myAttr.key.lcase()#="#encodeForHTMLAttribute(variables.myAttr.value)#"';
	
		if(attributes.style		!= "")		variables.result &= ' style="#encodeForHTMLAttribute(attributes.style)#"';	
		if(attributes.tooltip    != "")		variables.result &=	' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
		if(attributes.tooltip	!= "")		variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
		if(attributes.tooltip	!= "")		variables.result &= ' data-toggle="tooltip"';           
										variables.result &= '>';
		} // end usespan
								
	if(!attributes.isSafeHTML)				variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)				variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								


	if (attributes.usespan)					variables.result &= '</span>';
										variables.result &= variables.crlf;
								
     if (attributes.cacheid != "")			CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
 </cfscript>