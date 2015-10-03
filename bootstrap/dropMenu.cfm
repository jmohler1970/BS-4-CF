<!---@ Description: Support for dropmenu --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:dropMenu."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  

	param attributes.active			= false;
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains("dropmenu");
	param attributes.key			= "";
	param attributes.placeholder		= [];
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered		= true;
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.value			= "";
	
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     						variables.result &= crlf & '<li class="dropdown';
     if (attributes.active)		variables.result &=' active';
							variables.result &= '">';
							variables.result &= crlf & '<a class="dropdown-toggle" data-toggle="dropdown" role="button">';
							variables.result &= attributes.value;
							variables.result &= '<b class="caret"></b></a>';
							variables.result &= crlf & '<ul class="dropdown-menu" role="menu">';
						
	if(!attributes.isSafeHTML)	variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)	variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								

					
						
						
							variables.result &= crlf & '</ul></li>';
	
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>