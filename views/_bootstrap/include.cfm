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

	param attributes.cacheid			= ""; 
	param attributes.processed 		= true;
	param attributes.rendered 		= true;
	param attributes.template;


	if (!attributes.processed) exit "exitTag";

	variables.fullCacheid = variables.tagStack[1] & " " & attributes.key & " " & attributes.cacheid;
	if (attributes.cacheid != "" && cacheidExists(variables.fullcacheid) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}

	</cfscript>
</cfcase>

<cfcase value = "end">

	<cfsavecontent variable="variables.result">
		<!-- include -->
		<cfinclude template="../views/#attributes.template#">
		<!-- /include -->
	</cfsavecontent>

	<cfscript>
	if (attributes.cacheid != "")			CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = "";

	if (attributes.rendered)				writeOutput(variables.result);
	</cfscript>
</cfcase>
</cfswitch>