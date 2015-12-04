<!---@ Description: Support for column --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:column."; 



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();

	param attributes.cacheid			= "";
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains(variables.tagStack[1].lcase()); // this content is very large. Make sure it is clean before passing in
	param attributes.key			= "";
	param attributes.offset			= 0;
	param attributes.placeholder		= [];
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	param attributes.span			= 0;
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.tag 			= 'div';
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";

	// spans for specific screen sizes
	param attributes.colXs			= attributes.span;		if (!isnumeric(attributes.colXs)) attributes.colXs = attributes.span;
	param attributes.colSm			= attributes.span;		if (!isnumeric(attributes.colSm)) attributes.colSm = attributes.span;
	param attributes.colMd			= attributes.span;		if (!isnumeric(attributes.colMd)) attributes.colMs = attributes.span;
	param attributes.colLg			= "";				if (!isnumeric(attributes.colLg)) attributes.colLg = attributes.span;

	param attributes.offsetXs		= attributes.offset;	if (!isnumeric(attributes.offsetXs)) attributes.offsetXs = attributes.offset;
	param attributes.offsetSm		= attributes.offset;	if (!isnumeric(attributes.offsetSm)) attributes.offsetSm = attributes.offset;
	param attributes.offsetMd		= attributes.offset;	if (!isnumeric(attributes.offsetMd)) attributes.offsetMd = attributes.offset;
	param attributes.offsetLg		= 0;					if (!isnumeric(attributes.offsetLg)) attributes.offsetLg = attributes.offset;


	if (!attributes.processed) exit "exitTag";

	variables.fullCacheid = variables.tagStack[1] & " " & attributes.key & " " & attributes.cacheid;
	if (attributes.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}

	break;

case "end" :

	if(attributes.key 		!= "" )		{
																	thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes.placeholder);
																	attributes.isSafeHTML 	= true;
																	}


									variables.result &= variables.crlf & '<#attributes.tag# class="';
									variables.result &= 'col-xs-#encodeForHTMLAttribute(attributes.colXs)# ';
									variables.result &= 'col-sm-#encodeForHTMLAttribute(attributes.colSm)# ';
									variables.result &= 'col-md-#encodeForHTMLAttribute(attributes.colMd)# ';
	if(attributes.colLg		!= "")		variables.result &= 'col-lg-#encodeForHTMLAttribute(attributes.colLg)# ';
	if(attributes.offsetXs 	!= 0)		variables.result &= 'col-xs-offset-#encodeForHTMLAttribute(attributes.offsetXs)# ';
	if(attributes.offsetSm 	!= 0)		variables.result &= 'col-sm-offset-#encodeForHTMLAttribute(attributes.offsetSm)# ';
	if(attributes.offsetMd 	!= 0)		variables.result &= 'col-md-offset-#encodeForHTMLAttribute(attributes.offsetMd)# ';
	if(attributes.offsetLg 	!= 0)		variables.result &= 'col-lg-offset-#encodeForHTMLAttribute(attributes.offsetLg)# ';


	if(attributes.styleClass	!= "")		variables.result &= ' #attributes.styleClass#';
									variables.result &= '"';
	if(attributes.id		!= "")		variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.style		!= "")		variables.result &= ' style="#encodeForHTMLAttribute(attributes.style)#"';

	if(attributes.tooltip	!= "")		variables.result &= ' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")		variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")		variables.result &= ' data-toggle="tooltip"';

									variables.result &= '>';
									variables.result &= variables.crlf;

	if(!attributes.isSafeHTML)			variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)			variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean


									variables.result &= variables.crlf & '</#attributes.tag#><!-- /.column -->';
									variables.result &= variables.crlf;

	if (attributes.cacheid != "")			CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = "";
	if (attributes.rendered)				writeOutput(variables.result);

	break;
	}


</cfscript>