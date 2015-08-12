<!---@ Description: Support for formgroup. --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:formGroup."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.id			= "";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.tooltip		= "";
     
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
	   							variables.result &= variables.crlf & '<div class="form-group';
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';			
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';                         
	if(attributes.tooltip    != "")    variables.result &= ' tooltip="#attributes.tooltip#"';
								variables.result &= '>';
								variables.result &= thisTag.GeneratedContent; // pass through of content
								variables.result &= variables.crlf & '</div><!-- /.form-group -->';
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>