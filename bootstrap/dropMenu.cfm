<!---@ Description: Support for dropmenu --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:dropMenu."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  

	param attributes.look		= "default";
	param attributes.processed 	= true;
	param attributes.rendered	= true;
	param attributes.value		= "";
	
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     variables.result &= crlf & '<li class="dropdown">';
	variables.result &= crlf & '<a class="dropdown-toggle" data-toggle="dropdown" role="button">#attributes.value# <b class="caret"></b></a>';
	variables.result &= crlf & '<ul class="dropdown-menu" role="menu">';
	variables.result &= crlf & thisTag.generatedContent;
	variables.result &= crlf & '</ul></li>';
	
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>