<!---@ Description: Support for column --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:column."; 



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();


	param attributes.offset			= 0;		// This can be JSON too
	param attributes.processed 		= true;
	param attributes.rendered 		= true;
	param attributes.span			= 0;		// This can be JSON too
	param attributes.tag 			= 'div';
	
	
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
								

									variables.result &= variables.crlf & '<#attributes.tag# class="';
	if(isnumeric(attributes.span?.xs))		variables.result &= 'col-xs-#attributes.span.Xs.encodeForHTMLAttribute()# ';
	if(isnumeric(attributes.span?.sm))		variables.result &= 'col-sm-#attributes.span.Sm.encodeForHTMLAttribute()# ';
	if(isnumeric(attributes.span?.md))		variables.result &= 'col-md-#attributes.span.Md.encodeForHTMLAttribute()# ';
	if(isnumeric(attributes.span?.Lg))		variables.result &= 'col-lg-#attributes.span.Lg.encodeForHTMLAttribute()# ';
	if(isnumeric(attributes.span?.Xl))		variables.result &= 'col-xl-#attributes.span.Xl.encodeForHTMLAttribute()# ';
	
	if(attributes.offset?.Xs 	!= 0)	variables.result &= 'col-xs-offset-#attributes.offset.Xs.encodeForHTMLAttribute()# ';
	if(attributes.offset?.Sm 	!= 0)	variables.result &= 'col-sm-offset-#attributes.offset.Sm.encodeForHTMLAttribute()# ';
	if(attributes.offset?.Md 	!= 0)	variables.result &= 'col-md-offset-#attributes.offset.Md.encodeForHTMLAttribute()# ';
	if(attributes.offset?.Lg 	!= 0)	variables.result &= 'col-lg-offset-#attributes.offset.Lg.encodeForHTMLAttribute()# ';
	if(attributes.offset?.Xl 	!= 0)	variables.result &= 'col-xl-offset-#attributes.offset.Xl.encodeForHTMLAttribute()# ';


	if(attributes?.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';
									variables.result &= '"';
									
									variables.result &= application.filterAttributes(attributes);
									
									variables.result &= '>';

									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);	


									variables.result &= variables.crlf & '</#attributes.tag#><!-- /.column -->';
									variables.result &= variables.crlf;

	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = "";
	if (attributes.rendered)				writeOutput(variables.result);

	break;
	}


</cfscript>