<!---@ Description: Support for yesnoformat. Does not directly generate content --->


<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:row."; 
	
	
	param attributes.processed		= true;
	param attributes.rendered 		= true;
	param attributes.value;
	

switch (thisTag.ExecutionMode)	{
case "start" :

	if (!attributes.processed) exit "exitTag";


	break;

case "end" :

	if (!attributes.rendered) exit "exitTag";
	
	if(attributes.value)	writeOutput(application.geti18n("Yes"));
	else					writeOutput(application.geti18n("No"));
	

	break;
	}



</cfscript>