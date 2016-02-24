<!---@ Description: Support for column --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:column."; 



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();


	param attributes.isSafeHTML		= application?.Bootstrap?.isSafeHTML.contains(variables.tagStack[1].lcase()); // this content is very large. Make sure it is clean before passing in
	param attributes.offset			= 0;		// This can be JSON too
	param attributes.processed 		= true;
	param attributes.profile			= application?.Bootstrap?.profile;
	param attributes.rendered 		= true;
	param attributes.span			= 0;		// This can be JSON too
	param attributes.tag 			= 'div';
	param attributes.throwOnError		= application?.Bootstrap?.throwOnError;
	param attributes.tooltipPosition	= "bottom";
	
	
	if (!attributes.processed) exit "exitTag";
	

	
	
	if (isNumeric(attributes.span))		{
									attributes.span	= {xs = attributes.span,		sm = attributes.span, 	md = attributes.span  };
									}
	else								{
									attributes.span 	= attributes.span.replacelist(':', '":,');
									attributes.span 	= attributes.span.replace(', ', ', "', "all");
									attributes.span	= DeserializeJSON('{"#attributes.span#}');
									}

	if (isNumeric(attributes.offset))		{
									attributes.offset	= {xs = attributes.offset,	sm = attributes.offset,	md = attributes.offset,	lg = attributes.offset,	xl = attributes.offset};
									}
	else								{
									attributes.offset 	= attributes.offset.replacelist('{,=', '{",":');
									attributes.offset 	= attributes.offset.replace(', ', ', "', "all");							
									attributes.offset	= DeserializeJSON(attributes.offset);
									}
	
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}

	break;

case "end" :

	if(attributes?.key 		!= "" )		{
									thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes?.placeholder);
									attributes.isSafeHTML 	= true;
									}

								

																variables.result &= variables.crlf & '<#attributes.tag# class="';
	if(isnumeric(attributes.span?.xs))	variables.result &= 'col-xs-#encodeForHTMLAttribute(attributes.span.Xs)# ';
	if(isnumeric(attributes.span?.sm))	variables.result &= 'col-sm-#encodeForHTMLAttribute(attributes.span.Sm)# ';
	if(isnumeric(attributes.span?.md))	variables.result &= 'col-md-#encodeForHTMLAttribute(attributes.span.Md)# ';
	if(isnumeric(attributes.span?.Lg))	variables.result &= 'col-lg-#encodeForHTMLAttribute(attributes.span.Lg)# ';
	if(isnumeric(attributes.span?.Xl))	variables.result &= 'col-xl-#encodeForHTMLAttribute(attributes.span.Xl)# ';
	
	if(attributes.offset?.Xs 	!= 0)	variables.result &= 'col-xs-offset-#encodeForHTMLAttribute(attributes.offset.Xs)# ';
	if(attributes.offset?.Sm 	!= 0)	variables.result &= 'col-sm-offset-#encodeForHTMLAttribute(attributes.offset.Sm)# ';
	if(attributes.offset?.Md 	!= 0)	variables.result &= 'col-md-offset-#encodeForHTMLAttribute(attributes.offset.Md)# ';
	if(attributes.offset?.Lg 	!= 0)	variables.result &= 'col-lg-offset-#encodeForHTMLAttribute(attributes.offset.Lg)# ';
	if(attributes.offset?.Xl 	!= 0)	variables.result &= 'col-xl-offset-#encodeForHTMLAttribute(attributes.offset.Xl)# ';


	if(attributes?.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';
									variables.result &= '"';
	if(attributes?.id		!= "")		variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes?.style	!= "")		variables.result &= ' style="#encodeForHTMLAttribute(attributes.style)#"';

	if(attributes?.tooltip	!= "")		variables.result &= ' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes?.tooltip	!= "")		variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes?.tooltip	!= "")		variables.result &= ' data-toggle="tooltip"';

									variables.result &= '>';
									variables.result &= variables.crlf;

	if(!attributes.isSafeHTML)			variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)			variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean


									variables.result &= variables.crlf & '</#attributes.tag#><!-- /.column -->';
									variables.result &= variables.crlf;

	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = "";
	if (attributes.rendered)				writeOutput(variables.result);

	break;
	}


</cfscript>