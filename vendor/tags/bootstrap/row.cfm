<!---@ Description: Support for row. columns are expected to be inside of this --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:row."; 
	
	

switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();


	param attributes.processed		= true;
	param attributes.rendered 		= true;
	param attributes.styleClass		= "";
	param attributes.tag 			= 'div';

	
	
	if (!attributes.processed) exit "exitTag";

	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}

	break;

case "end" :


									variables.result &= variables.crlf & '<#attributes.tag# class="row';
	if(attributes?.styleClass	!= "")	variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';
									variables.result &= '"';
									
									variables.result &= application.filterAttributes(attributes);
									
									variables.result &= '>';

									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);	



									variables.result &= variables.crlf & '</#attributes.tag#><!-- /.row -->';
									variables.result &= variables.crlf;
									variables.result &= variables.crlf;

	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = "";
	if (attributes.rendered)				writeOutput(variables.result);

	break;
	}


</cfscript>