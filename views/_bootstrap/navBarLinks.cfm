<!---@ Description: Support for navbarLinks, NavLink is expected to be inside --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:navbarLinks."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();

	param attributes.cacheid			= "";
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.key			= ""; // Doesn't read a language file. This is included so than fullCacheid is generated identically
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.pull			= "";
	param attributes.placeholder		= []; // see key
	param attributes.rendered 		= true;
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";
	
	
	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes.key & " " & attributes.cacheid;
	if (attributes.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	
	break;

case "end" :

									variables.result &= '<ul class="nav navbar-nav';
	if (attributes.pull != "")			variables.result &= ' navbar-#encodeForHTMLAttribute(attributes.pull)#';
									variables.result &= '"';
	if (attributes.id		!= "")		variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if (attributes.tooltip	!= "")		variables.result &= ' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if (attributes.tooltip	!= "")		variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if (attributes.tooltip	!= "")		variables.result &= ' data-toggle="tooltip"';
									variables.result &= '>';
								
	if(!attributes.isSafeHTML)			variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)			variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								
								

									variables.result &= variables.crlf & '</ul><!-- /.nav -->';
								
								
	if (attributes.cacheid != "")			CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);							

									thisTag.GeneratedContent = "";
	if (attributes.rendered)				writeOutput(variables.result);

	break;
	}


</cfscript>