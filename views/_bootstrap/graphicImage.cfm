<!---@ Description: Support for p --->
<!---@ Also see: http://www.jsftoolbox.com/documentation/help/12-TagReference/html/h_graphicImage.html --->





<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:graphicImage."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
  

	param attributes.base64mime		= "image/png";
	param attributes.library			= "default";
     param attributes.processed		= true;
	param attributes.rendered 		= true;
     param attributes.tooltipPosition	= "bottom";
     
     
     if(!isnumeric(attributes?.height)) attributes.height = "";
     if(!isnumeric(attributes?.width))	attributes.width = "";
     
     
     
     variables.arAttrSeries = [];
		
	// We will be passing through HTML5 data-, Mouse Events, and Angular JS
	for(variables.myKey in attributes)	{
		if (left(variables.myKey, 5) == "data-" || left(variables.myKey, 2) == "on" || left(variables.myKey, 3) == "ng-")	{
			ArrayAppend(arAttrSeries, {key = variables.myKey, value = attributes[variables.myKey] });
			} // end if	
		}	// end for




     if (!attributes.processed) exit "exitTag";
     
     
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
     
	break;
     
case "end" :
     if(attributes?.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");
	
	   								variables.result &= '<img class="';
	if(attributes?.shape		!= "")	variables.result &= ' img-#encodeForHTMLAttribute(attributes.shape.lcase())#';
	if(attributes?.text			!= "")	variables.result &= ' text-#encodeForHTMLAttribute(attributes.text)#';
	if(attributes?.styleClass	!= "")	variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';
	   								variables.result &= '"';
	if(attributes?.id			!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	
	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #lcase(variables.myAttr.key)#="#encodeForHTMLAttribute(variables.myAttr.value)#"';
	
	if (attributes?.base64 		!= "")	variables.result &= ' src="data:#encodeForHTMLAttribute(attributes.base64mime)#;base64,#attributes.base64#"';
	if (attributes?.base64 		== "")	variables.result &= ' src="#application.Bootstrap.ImageLibrary[attributes.library]##encodeForHTMLAttribute(attributes?.name)#"';
	
	// start style
	if(attributes?.style		!= "" || attributes?.height != "" || attributes?.width != "")	{
									variables.result &= ' style="';
									}	
	if(attributes?.height		!= "")	variables.result &= ' height : #attributes.height#px;';
	if(attributes?.width		!= "")	variables.result &= ' width  : #attributes.width#px;';
									variables.result &= ' #encodeForHTMLAttribute(attributes?.style)#"';
	// end style
	
									variables.result &= ' alt="#encodeForHTMLAttribute(attributes?.alt)#"';
	if(attributes?.tooltip		!= "")	variables.result &=	' title="#encodeForHTMLAttribute(attributes.tooltip)#"';               
									variables.result &= ' />';
							
	if (attributes?.cacheid		!= "")	CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
 </cfscript>