<!---@ Description: Support for buttonToolbar --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:buttonToolbar."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
 	param attributes.id			= "";
	param attributes.processed 	= true;
	param attributes.rendered	= true;
	param attributes.size		= "";
	param attributes.tooltip		= "";

	
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
								variables.result &= '<div class="btn-toolbar';
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.tooltip    != "")	variables.result &=	' title="#attributes.tooltip#"';               
								variables.result &= '>';
							
								variables.result &= thisTag.GeneratedContent; // pass through of content
	
								variables.result &= '</div><!-- /.btn-toolbar -->';
     
     
	thisTag.GeneratedContent = "";
	if (attributes.rendered)			writeOutput(variables.result);
    
 	break;
	}
 </cfscript>