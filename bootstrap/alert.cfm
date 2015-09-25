<!---@ Description: Support for alert --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:alert."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.closable	= false;
	param attributes.id			= "";
	param attributes.look		= "warning";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.title		= "";
	param attributes.tooltip		= "";
     
    if (!attributes.processed) exit "exitTag";
    
    if (attributes.id.REFindNoCase('[^0-9A-Za-z ]')) 				throw "Special characters are not allowed";
    if (attributes.id.len() > application.Bootstrap.Limit.ID)		throw "id field is too long";
    if (!application.Bootstrap.validLook.contains(attributes.look)) throw "This is an invalid look option";
    
    
     
	break;
     
case "end" :     
     
	   							variables.result &= '<div class="alert alert-#lcase(attributes.look)#';
	if(attributes.closable)			variables.result &= ' alert-dismissible';  							
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.tooltip    != "")    variables.result &= ' tooltip="#encodeForHTMLAttribute(attributes.tooltip)#"';
								variables.result &= '>';
	
	if(attributes.closable)			variables.result &= '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';		
	if(attributes.title		!= "")    variables.result &= '<strong>#attributes.title#</strong>';
								variables.result &= variables.crlf;
	if(attributes.title		!= "")    variables.result &= '<br />';
								variables.result &= thisTag.GeneratedContent; // pass through of content
								variables.result &= '</div><!-- /.alert -->';
								variables.result &= variables.crlf;
     

     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>