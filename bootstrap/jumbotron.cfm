<!---@ Description: Support for Jumbotron --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:jumbotron."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.id			= "";
	param attributes.rendered 	= true;
	param attributes.tooltip		= "";
     
	break;
     
case "end" :     
     
	   							variables.result &= '<div class="jumbotron"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.tooltip    != "")    variables.result &= ' tooltip="#attributes.tooltip#"';
								variables.result &= '>';
								variables.result &= thisTag.GeneratedContent; // pass through of content
								variables.result &= '</div>';
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>