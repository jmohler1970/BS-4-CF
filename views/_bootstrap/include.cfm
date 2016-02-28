<!---@ Description: Support for cfinclude. Does not directly generate content --->




<cfif !thisTag.HasEndTag> 
	<cfabort showerror="An end tag is required for b:include.">
</cfif>



<cfswitch expression="#thisTag.ExecutionMode#">
<cfcase value="start">

	<cfscript>
	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();


	param attributes.isSafeHTML		= application?.Bootstrap?.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.processed 		= true;
	param attributes.profile			= application?.Bootstrap?.profile;
	param attributes.rendered 		= true;
	param attributes.throwOnError		= application?.Bootstrap?.throwOnError;
	param attributes.template;


	if (!attributes.processed) exit "exitTag";

	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}

	</cfscript>
</cfcase>

<cfcase value = "end">

	
	<cfsavecontent variable="variables.result"> 
		<cfinclude template="../#attributes.template#">
	</cfsavecontent>
	
	<cfscript>
	if(attributes.rendered && !attributes.isSafeHTML)	variables.result = getSafeHTML(variables.result.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if(attributes.rendered &&  attributes.isSafeHTML)	variables.result = variables.result.trim(); // warning content must already be clean								

	
		
	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = "";

	if (attributes.rendered)				writeOutput(variables.result);
	</cfscript>
</cfcase>
</cfswitch>