<!---@ Description: Support for head. The real strenth in this tag comes from how it interacts with outputScript and outputStyleSheet --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:head"; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :
	
	variables.result = "";

	//param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains("head");

	param attributes.processed 		= true;
	//param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	//param attributes.throwOnError		= application.Bootstrap.throwOnError;


	if (!attributes.processed) exit "exitTag";
	break;
case "end" :   


	//if(!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	//if( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								
	
								variables.result &= thisTag.GeneratedContent.trim();
	
		
	thisTag.GeneratedContent = "";
	if (attributes.rendered)			writeOutput(variables.result);	

 	break;
	}
 </cfscript>
 
 