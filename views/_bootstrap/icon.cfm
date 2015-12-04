<!---@ Description: Support for Glyphicons --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:icon."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
  
	param attributes.addon			= false;
	param attributes.binding			= "";
	param attributes.cacheid			= "";	// this is so small, why are you cacheing it?
	param attributes.id				= "";
	// param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.library			= "default";
	param attributes.look			= "";
	 param attributes.key			= "";
	param attributes.name			= "";
	 param attributes.placeholder		= [];
	param attributes.processed 		= true;
	// param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	param attributes.size			= "";
     param attributes.spin			= false;
     param attributes.style			= "";
     param attributes.styleClass		= "";
     // param attributes.throwOnError		= application.Bootstrap.throwOnError;
     param attributes.tooltip			= "";
     param attributes.tooltipPosition = "bottom";
     

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
	if (attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) attributes.name = evaluate("caller.rc.#attributes.binding#");    
     
	if (attributes.addon)				variables.result &= '<span class="input-group-addon">';
	   								variables.result &= '<i class="#application.Bootstrap.IconLibrary[attributes.library]##encodeForHTMLAttribute(attributes.name)#';
	if (attributes.look 	!= "")		variables.result &= ' text-#encodeForHTMLAttribute(attributes.look.lcase())#';
	if (attributes.size 	!= "")		variables.result &= ' fa-#encodeForHTMLAttribute(attributes.size)#';
	if (attributes.spin)				variables.result &= ' fa-spin';
	if (attributes.styleClass != "") 		variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';  							
	   								variables.result &= '"';
	if (attributes.id		!= "")		variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	
	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #lcase(variables.myAttr.key)#="#encodeForHTMLAttribute(variables.myAttr.value)#"';
	
	if (attributes.style 	!= "")		variables.result &= ' style="#encodeForHTMLAttribute(attributes.style)#"';
	if (attributes.tooltip   != "")		variables.result &= ' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if (attributes.tooltip	!= "")		variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if (attributes.tooltip	!= "")		variables.result &= ' data-toggle="tooltip"';
	
									variables.result &= '></i>';
	if (attributes.addon)				variables.result &= '</span>';
     
     if (attributes.cacheid != "")			CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent	= "";
     if (attributes.rendered)				writeOutput(variables.result);
          
	break;
	}
     
 
</cfscript>