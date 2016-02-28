<!---@ Description: Support for navbar --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:navBar."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
  

	param attributes.isSafeHTML		= application?.Bootstrap?.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.processed 		= true;
	param attributes.profile			= application?.Bootstrap?.profile;
     param attributes.rendered 		= true;
	param attributes.throwOnError		= application?.Bootstrap?.throwOnError;


	
	if (!attributes.processed) exit "exitTag";
	

	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	break;

case "end" :



	if (attributes?.key 		!= "" )		{
																	thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes?.placeholder);
																	attributes.isSafeHTML 	= true;
																	}

	if (attributes?.inverse == true)		variables.result &= '<nav class="navbar navbar-inverse';
	else								variables.result &= '<nav class="navbar navbar-default';
	
	
	if (attributes?.fixed	!= "")		variables.result &= ' navbar-fixed-#encodeForHTMLAttribute(attributes.fixed)#';
									variables.result &= ' "';

	if(attributes?.style	!= "")		variables.result &= ' style = "#encodeForHTMLAttribute(attributes.style)#"';
									variables.result &= '>';
									variables.result &= crlf & '<div class="container-fluid">';
									variables.result &= crlf & '<div class="navbar-header">';

									variables.result &= '<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" aria-expanded="false">';
									variables.result &= crlf & '<span class="sr-only">Toggle navigation</span>';
									variables.result &= crlf & '<span class="icon-bar"></span>';
									variables.result &= crlf & '<span class="icon-bar"></span>';
									variables.result &= crlf & '<span class="icon-bar"></span>';
									variables.result &= crlf & '</button>';

	if (attributes?.brand != "" && attributes?.brandHref == "")	variables.result &= '<a class="navbar-brand" href="~/">#encodeForHTMLAttribute(attributes.Brand)#</a>';						
	if (attributes?.brand != "" && attributes?.brandHref != "")	variables.result &= '<a class="navbar-brand" href="#encodeForHTMLAttribute(attributes.brandHref)#">#encodeForHTML(attributes.Brand)#</a>';	

									variables.result &= '</div><!-- /.navbar-header -->';	// end of Brand and Hamburger area

	// Collect the nav links, forms, and other content for toggling 
									variables.result &= '<div class="collapse navbar-collapse">';

							
	if(!attributes.isSafeHTML)			variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)			variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean


									variables.result &= variables.crlf & '</div><!-- /.navbar-collapse -->';
									variables.result &= variables.crlf & '</div><!-- /.container-fluid -->';
									variables.result &= '</nav>';


	if (attributes?.cacheid != "")		CachePut(attributes.cacheid, variables.result);


	thisTag.GeneratedContent = "";
	if (attributes.rendered)				writeOutput(variables.result);

	break;
	}


</cfscript>