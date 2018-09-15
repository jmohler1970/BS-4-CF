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

	param attributes.key			= "";
	param attributes.header			= "";
	param attributes.icon			= "";
	param attributes.iconAlign		= "left";
	param attributes.isSafeHTML		= application?.Bootstrap?.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.library			= "default"; //for icons
	param attributes.processed		= true;
	param attributes.profile			= application?.Bootstrap?.profile;
	param attributes.rendered 		= true;
	param attributes.throwOnError		= application?.Bootstrap?.throwOnError;
	param attributes.value			= "";

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

	if(attributes.value	!= "")			thisTag.generatedContent = attributes.value;


									variables.Content		= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);


     if (variables.Content == "" && attributes?.header == "")
     								variables.result &= '<div class="dropdown-divider"></div>';

     if (attributes.header != "")			variables.result &= '<div class="dropdown-header">#encodeForHTML(attributes.header)#</div>';

 	if (variables.Content != "")				{
     	//										variables.result &= '<div class=""';
     	//if(attributes?.active	== true)				variables.result &= ' class="active"';
     	//if(attributes?.disabled	== true)				variables.result &= ' class="disabled"';
		//										variables.result &= '>';

												variables.result &= '<a class="dropdown-item" href="#attributes.href#';
		if(attributes?.fragment	== true)				variables.result &= '###encodeForURL(attributes.fragment)#';
												variables.result &= '"';


												variables.result &= application.filterAttributes(attributes);


												variables.result &= '>';
		if(attributes?.icon != "" && attributes.iconAlign == "left")		{
												variables.result &= '<i class="#application.Bootstrap.IconLibrary[attributes.library]##attributes.icon#"></i> ';
												}

												variables.result &= variables.Content;

		if(attributes?.icon != "" && attributes.iconAlign == "right")	{
												variables.result &= '<i class="#application.Bootstrap.IconLibrary[attributes.library]##attributes.icon#"></i> ';
												}

												variables.result &= '</a>';
//												variables.result &= '</li>';
												variables.result &= variables.crlf;
		} // end has value

     if (attributes?.cacheid != "")			CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);

	break;
	}


</cfscript>
