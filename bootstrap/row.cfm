<!---@ Description: Support for row. columns are expected to be inside of this --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:row."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.id			= "";
	param attributes.rendered 	= true;
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.tooltip		= "";
     
	break;
     
case "end" :     
     
	   							variables.result &= variables.crlf & '<div class="row';
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';			
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';                         
	if(attributes.tooltip    != "")    variables.result &= ' tooltip="#attributes.tooltip#"';
								variables.result &= '>';
								variables.result &= thisTag.GeneratedContent; // pass through of content
								variables.result &= variables.crlf & '</div><!-- /.row -->';
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>