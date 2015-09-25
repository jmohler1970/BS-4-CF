<!---@ Description: Support for Jumbotron --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:jumbotron."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.id			= "";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.tight		= false;
	param attributes.tooltip	= "";
     
	if (!attributes.processed) exit "exitTag";
	
	if (attributes.id.REFindNoCase('[^0-9A-Za-z ]')) 				throw "Special characters are not allowed";
	
	break;
     
case "end" :     
     
     							variables.result &= variables.crlf;
								variables.result &= '<div class="jumbotron"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.tooltip    != "")    variables.result &= ' tooltip="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tight)			variables.result &= ' style="margin : 0; padding-top : 0; padding-right : 0"';
								variables.result &= '>';
								variables.result &= thisTag.GeneratedContent; // pass through of content
								variables.result &= '</div><!-- /.jumbotron -->';
								variables.result &= variables.crlf;
											
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
</cfscript>
