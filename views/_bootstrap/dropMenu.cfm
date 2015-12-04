<!---@ Description: Support for dropmenu --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:dropMenu."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
  
	param attributes.cacheid			= "";
	param attributes.active			= false;
	param attributes.buttonPart		= false;
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.look			= "default";
	param attributes.key			= "";
	param attributes.placeholder		= [];
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered		= true;
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.value			= "";
	
	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes.key & " " & attributes.cacheid;
	if (attributes.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	break;
     
case "end" :

	if(attributes.key 		!= "" )				{
											attributes.value	= application.geti18n(attributes.key, attributes.placeholder);
											}	

	if(!attributes.buttonPart)		{										
								variables.result &= variables.crlf & '<li class="dropdown';
     if (attributes.active)			variables.result &=' active';
								variables.result &= '">';
								variables.result &= variables.crlf & '<a class="dropdown-toggle" data-toggle="dropdown" role="button">';
								variables.result &= attributes.value;
								variables.result &= '<b class="caret"></b></a>';
								}
								
	if (attributes.buttonPart)		{							
								variables.result &= '<button type="button" class="btn btn-';
								variables.result &= attributes.look  & ' dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">';
								variables.result &= variables.crlf & '<span class="caret"></span>';
								variables.result &= variables.crlf & '<span class="sr-only">Toggle Dropdown</span>';
								variables.result &= '</button>' & variables.crlf;
								}
								
								
								
								variables.result &= crlf & '<ul class="dropdown-menu" role="menu">';
						
	if(!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								

					
						
						
								variables.result &= crlf & '</ul>';
	if(!attributes.buttonPart)		variables.result &= '</li>';
							
	if (attributes.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);						
	
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>