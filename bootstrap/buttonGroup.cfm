<!---@ Description: Support for buttonGroup --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:buttonGroup."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
 	param attributes.id			= "";
	param attributes.justified	= false;
	param attributes.orientation 	= "horizontal";
	param attributes.processed 	= true;
	param attributes.rendered	= true;
	param attributes.size		= "";
	param attributes.tooltip		= "";

	
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
	if(attributes.orientation == "horizontal")	variables.result &= '<div class="btn-group';
	if(attributes.orientation == "vertical")	variables.result &= '<div class="btn-group-vertical';
		   							
	if(attributes.size		!= "")	variables.result &= ' btn-group-#attributes.size#';		
	if(attributes.justified)			variables.result &= ' btn-group-justified';	
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.tooltip    != "")	variables.result &=	' title="#attributes.tooltip#"';               
								variables.result &= ' role="group">';
							
								variables.result &= thisTag.GeneratedContent; // pass through of content
	
								variables.result &= '</div>';
     
     
	thisTag.GeneratedContent = "";
	if (attributes.rendered)			writeOutput(variables.result);
    
 	break;
	}
 </cfscript>