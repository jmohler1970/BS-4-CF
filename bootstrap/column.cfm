<!---@ Description: Support for column --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:column."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
  	variables.crlf =  chr(13) & chr(10);
  
	param attributes.id			= "";
	param attributes.offset		= 0;
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.span		= 0;
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.tooltip		= "";
  
	// spans for specific screen sizes
	param attributes.colXs		= attributes.span;
	param attributes.colSm		= attributes.span;
	param attributes.colMd		= attributes.span;
	param attributes.colLg		= "";
	
	param attributes.offsetXs	= attributes.offset;
	param attributes.offsetSm	= attributes.offset;
	param attributes.offsetMd	= attributes.offset;
	param attributes.offsetLg	= 0;


 	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
	   							variables.result &= variables.crlf & '<div class="';
	   							variables.result &= 'col-xs-#attributes.colXs# ';
	   							variables.result &= 'col-sm-#attributes.colSm# ';
	   							variables.result &= 'col-md-#attributes.colMd# ';
	if(attributes.colLg 	!= "")	variables.result &= 'col-lg-#attributes.colLg# ';
	if(attributes.offsetXs 	!= 0)   	variables.result &= 'col-xs-offset-#attributes.offsetXs# ';
	if(attributes.offsetSm 	!= 0)	variables.result &= 'col-sm-offset-#attributes.offsetSm# ';
	if(attributes.offsetMd 	!= 0)	variables.result &= 'col-md-offset-#attributes.offsetMd# ';
	if(attributes.offsetLg 	!= 0)	variables.result &= 'col-lg-offset-#attributes.offsetLg# ';
	   							
	   							
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';		
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';                       
	if(attributes.tooltip    != "")    variables.result &= ' title="#attributes.tooltip#"';
								variables.result &= '>';
								variables.result &= thisTag.GeneratedContent; // pass through of content
								variables.result &= variables.crlf & '</div><!-- /.column -->';
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>