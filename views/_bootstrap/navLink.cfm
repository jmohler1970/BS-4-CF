<!---@ Description: Support for navlink. This this does not generate <ul> --->
<!---@ Note: This can power dropButton --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:navlink."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
  
	param attributes.iconAlign		= "left";
	param attributes.isSafeHTML		= application?.Bootstrap?.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.library			= "default"; //for icons
	param attributes.processed		= true;
	param attributes.profile			= application?.Bootstrap?.profile;
	param attributes.rendered 		= true;
	param attributes.throwOnError		= application?.Bootstrap?.throwOnError;
	
	
	// Patch this
	if(attributes?.disabled == "disabled")	attributes.disabled = true;


     
     if (!attributes.processed) exit "exitTag";
     
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	break;
     
case "end" :

	if(attributes?.value	!= "")										thisTag.generatedContent = attributes.value;
	if(attributes?.binding	!= "" && isDefined("caller.rc.#attributes.binding#")) 	thisTag.generatedContent = evaluate("caller.rc.#attributes.binding#");

     
     if (thisTag.generatedContent == "" && attributes?.header == "")
     								variables.result &= '<li role="separator" class="divider"></li>';
     
     if (attributes?.header != "")			variables.result &= '<li class="dropdown-header">#encodeForHTML(attributes.header)#</li>';
     
 	if (thisTag.generatedContent != "")				{
     											variables.result &= '<li';
     	if(attributes?.active	== true)				variables.result &= ' class="active"';
     	if(attributes?.disabled	== true)				variables.result &= ' class="disabled"';						  			
												variables.result &= '>';
	
												variables.result &= '<a href="#attributes.href#';
		if(attributes?.fragment	== true)				variables.result &= '###encodeForURL(attributes.fragment)#';
												variables.result &= '"';
												
												
												variables.result &= application.filterAttributes(attributes);
												
												
												variables.result &= '>';
		if(attributes?.icon != "" && attributes.iconAlign == "left")		{
												variables.result &= '<i class="#application.Bootstrap.IconLibrary[attributes.library]##attributes.icon#"></i> ';
												}
												
												variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);					
														
		if(attributes?.icon != "" && attributes.iconAlign == "right")	{
												variables.result &= '<i class="#application.Bootstrap.IconLibrary[attributes.library]##attributes.icon#"></i> ';
												}
			
												variables.result &= '</a>';
												variables.result &= '</li>';
												variables.result &= variables.crlf;
		} // end has value						
     
     if (attributes?.cacheid != "")			CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>