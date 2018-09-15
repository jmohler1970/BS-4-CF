<!---@ Description: Support for p --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:p."; 



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();


	param attributes.processed		= true;
	param attributes.rendered 		= true;
	param attributes.styleClass		= "";
	param attributes.text			= "";
	param attributes.value			= "";

	variables.myClass = "";
	if(attributes?.lead 		== "lead")	variables.lead = true;
	if(attributes?.lead			== true)		variables.myClass &= 'lead ';
	if(attributes?.static		== true)		variables.myClass &= 'form-control-static ';
	if(attributes?.text			!= "")		variables.myClass &= 'text-#attributes.text# ';
	if(attributes?.styleClass	!= "")		variables.myClass &= '#attributes.styleClass# ';




	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}

	
	break;

case "end" :

	if(attributes?.value	!= "")		{ thisTag.GeneratedContent = attributes.value; }


									variables.result &= variables.crlf;
	if(variables.myClass	== "")		variables.result &= '<p';
	if(variables.myClass	!= "")		variables.result &= '<p class = "#variables.myClass.encodeForHTMLAttribute()#"';
	
	
									variables.result &= application.filterAttributes(attributes);
           
									variables.result &= '>';
	
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);

	
									variables.result &= '</p>';
									variables.result &= variables.crlf;


	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = "";
	if (attributes.rendered)				writeOutput(variables.result);

	break;
	}
</cfscript>