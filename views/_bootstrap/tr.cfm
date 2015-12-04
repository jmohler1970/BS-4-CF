<!---@ Description: Support for tr --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:tr."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();
  
	param attributes.cacheid			= "";
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.look			= "";
	param attributes.key			= "";	//	content not directly generated, do not put td,th in language files
	param attributes.placeholder		= [];	//	see key
	param attributes.processed		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	
	if(!ArrayContains(['','active','success','info','warning','danger'],attributes.look)) throw "tr tag has invalid contextual class option";
	
	variables.myClass = "";
     if(attributes.look		!= "")	variables.myClass &= '#lcase(attributes.look)# ';	
     if(attributes.styleClass	!= "")	variables.myClass &= '#attributes.styleClass# ';
     
     
   	// We will be passing through HTML5 data-, Mouse Events, and Angular JS
	variables.arAttrSeries = [];
	
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

	if(variables.myClass 	== "")			variables.result &= '<tr';
	if(variables.myClass 	!= "")			variables.result &= '<tr class="#encodeForHTMLAttribute(variables.myClass)#"';
	if(attributes.id		!= "")			variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	
	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #lcase(variables.myAttr.key)#="#encodeForHTMLAttribute(variables.myAttr.value)#"';
	
	if(attributes.style		!= "")			variables.result &= ' style="#encodeForHTMLAttribute(attributes.style)#"';                 
										variables.result &= '>';
										variables.result &= variables.crlf;

										
	if(!attributes.isSafeHTML)				variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)				variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean										
										
										
										variables.result &= variables.crlf;
										variables.result &= '</tr>';
										variables.result &= variables.crlf;
     
	if (attributes.cacheid != "")				CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent = "";
	if (attributes.rendered)					writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>