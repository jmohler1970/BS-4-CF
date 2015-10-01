<!---@ Description: Support for navlink. This this does not generate <ul> --->
<!---@ Note: This can power dropButton --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:navlink."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.active		= false;
	param attributes.binding			= "";
	param attributes.disabled		= false;
	param attributes.fragment		= false;
	param attributes.icon			= "";
	param attributes.iconAlign		= "left";
	param attributes.id				= "";
	param attributes.isSafeHTML		= true;
	param attributes.header			= "";
	param attributes.href			= "";
	param attributes.library			= "default"; //for icons
	param attributes.processed		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
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
     
     
     
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :

	if(attributes.value != "")											thisTag.generatedContent = attributes.value;
	if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) 	thisTag.generatedContent = evaluate("caller.rc.#attributes.binding#");

     
     if (thisTag.generatedContent == "" && attributes.header == "")
     								variables.result &= '<li role="separator" class="divider"></li>';
     
     if (attributes.header != "")			variables.result &= '<li class="dropdown-header">#encodeForHTML(attributes.header)#</li>';
     
 	if (thisTag.generatedContent != "")				{
     											variables.result &= '<li';
     	if(attributes.active)						variables.result &= ' class="active"';
     	if(attributes.disabled)						variables.result &= ' class="disabled"';						  			
												variables.result &= '>';
	
												variables.result &= '<a href="#encodeForHTMLAttribute(attributes.href)#';
		if(attributes.fragment != false)				variables.result &= '###encodeForURL(attributes.fragment)#';
												variables.result &= '"';
		if(attributes.id		!= "")				variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
		
		for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #lcase(variables.myAttr.key)#="#encodeForHTMLAttribute(variables.myAttr.value)#"';
		
												variables.result &= '>';
		if(attributes.icon != "" && attributes.iconAlign == "left")		{
												variables.result &= '<i class="#application.Bootstrap.IconLibrary[attributes.library]##attributes.icon#"></i> ';
												}
												
	if (!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if ( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								
											
												
														
		if(attributes.icon != "" && attributes.iconAlign == "right")	{
												variables.result &= '<i class="#application.Bootstrap.IconLibrary[attributes.library]##attributes.icon#"></i> ';
												}
			
												variables.result &= '</a>';
												variables.result &= '</li>';
												variables.result &= variables.crlf;
		} // end has value						
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>