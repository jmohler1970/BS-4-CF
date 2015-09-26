<!---@ Description: Support for row. columns are expected to be inside of this --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:row."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.id			= "";
	param attributes.processed	= true;
	param attributes.rendered 	= true;
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.tooltip		= "";
	param attributes.tooltipPosition	= "bottom";
	
	
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
	   							variables.result &= variables.crlf & '<div class="row';
	if(attributes.styleClass	!= "")	variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';			
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.style		!= "")	variables.result &= ' style="#encodeForCSS(attributes.style)#"';                         
	if(attributes.tooltip    != "")    variables.result &= ' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-toggle="tooltip"';
								variables.result &= '>';
								
								variables.result &= thisTag.GeneratedContent; // Warning: not cleaned pass through of content
								
								variables.result &= variables.crlf & '</div><!-- /.row -->';
								variables.result &= variables.crlf;
								variables.result &= variables.crlf;
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>