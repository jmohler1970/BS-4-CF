<!---@ Description: Support for dropmenu --->




<cfscript>
if (!thisTag.HasEndTag)
	abort "An end tag is required for b:dropMenu.";



switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();


	param attributes.buttonPart		= false;		// false actually does something
	param attributes.look			= "default";
	param attributes.processed 		= true;
	param attributes.rendered		= true;

	if (!attributes.processed) exit "exitTag";

	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	break;

case "end" :


	if(attributes?.buttonPart == false)	{
									variables.result &= variables.crlf & '<li class="nav-item dropdown';
     if (attributes?.active == true)		variables.result &=' active';
									variables.result &= '">';
									variables.result &= variables.crlf & '<a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button">';
									variables.result &= attributes.value;
									variables.result &= '</a>';
									}

	if (attributes.buttonPart)			{
									variables.result &= '<button type="button" class="btn btn-';
									variables.result &= attributes.look  & ' dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">';
									variables.result &= variables.crlf & '<span class="caret"></span>';
									variables.result &= variables.crlf & '<span class="sr-only">Toggle Dropdown</span>';
									variables.result &= '</button>' & variables.crlf;
									}



									variables.result &= crlf & '<div class="dropdown-menu" role="menu">';


									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);


									variables.result &= crlf & '</div>';
	if(attributes?.buttonPart == false)		variables.result &= '</li>';

	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);

	break;
	}


</cfscript>
