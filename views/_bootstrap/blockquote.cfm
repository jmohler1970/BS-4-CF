<!---@ Description: Support for blockquote --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:blockquote."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	=  chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
  
	param attributes.binding			= "";
	param attributes.cacheid			= "";
     param attributes.id				= "";
     param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains(variables.tagStack[1].lcase());
    	param attributes.key			= "";
	param attributes.placeholder		= [];
     param attributes.processed 		= true;
     param attributes.profile			= application.Bootstrap.profile;
     param attributes.reverse			= false;
	param attributes.rendered 		= true;
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.text			= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
     param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";
	
	
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
     if(attributes.binding 	!= "" && isDefined("caller.rc.#attributes.binding#")) 	thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");
     if(attributes.key 		!= "")										{
																	thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes.placeholder);
																	attributes.isSafeHTML 	= true;				
																	}	
     
	
									variables.result &= '<blockquote class="';
	if(attributes.reverse)				variables.result &= ' blockquote-reverse';	
	if(attributes.text		!= "")		variables.result &= ' text-#encodeForHTMLAttribute(attributes.text)#';	
	if(attributes.styleClass	!= "")		variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';		
	   								variables.result &= '"';
	if(attributes.id		!= "")		variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	
	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #variables.myAttr.key.lcase()#="#encodeForHTMLAttribute(variables.myAttr.value)#"';
		
	if(attributes.style		!= "")		variables.result &= ' style="#encodeForCSS(attributes.style)#"';
	if(attributes.tooltip    != "")		variables.result &=	' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")		variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")		variables.result &= ' data-toggle="tooltip"';               
									variables.result &= '>';
	
	if(!attributes.isSafeHTML)			variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)			variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								

									
									variables.result &= '</blockquote>';
     
     
     if (attributes.cacheid != "")			CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
 </cfscript>