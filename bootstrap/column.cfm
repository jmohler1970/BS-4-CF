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
	if(!structKeyExists(attributes, 'col-xs'))	attributes["col-xs"] = attributes.span;
	if(!structKeyExists(attributes, 'col-sm'))	attributes["col-sm"] = attributes.span;
	if(!structKeyExists(attributes, 'col-md'))	attributes["col-md"] = attributes.span;
	if(!structKeyExists(attributes, 'col-lg'))	attributes["col-lg"] = attributes.span;
	
	if(!structKeyExists(attributes, 'offset-xs'))	attributes["offset-xs"] = attributes.offset;
	if(!structKeyExists(attributes, 'offset-sm'))	attributes["offset-sm"] = attributes.offset;
	if(!structKeyExists(attributes, 'offset-md'))	attributes["offset-md"] = attributes.offset;
	if(!structKeyExists(attributes, 'offset-lg'))	attributes["offset-lg"] = attributes.offset;


 	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
	   								variables.result &= variables.crlf & '<div class="';
	   								variables.result &= 'col-xs-#attributes["col-xs"]# col-sm-#attributes["col-sm"]# col-md-#attributes["col-md"]# col-lg-#attributes["col-lg"]#';
	if(attributes['offset-xs'] != 0)   	variables.result &= ' col-xs-offset-#attributes["offset-xs"]#';
	if(attributes['offset-sm'] != 0)	 	variables.result &= ' col-sm-offset-#attributes["offset-sm"]#';
	if(attributes['offset-md'] != 0)	 	variables.result &= ' col-md-offset-#attributes["offset-md"]#';
	if(attributes['offset-lg'] != 0)		variables.result &= ' col-lg-offset-#attributes["offset-lg"]#';
	   							
	   							
	if(attributes.styleClass	!= "")		variables.result &= ' #attributes.styleClass#';		
	   								variables.result &= '"';
	if(attributes.id		!= "")		variables.result &= ' id="#attributes.id#"';
	if(attributes.style		!= "")		variables.result &= ' style="#attributes.style#"';                       
	if(attributes.tooltip    != "")    	variables.result &= ' tooltip="#attributes.tooltip#"';
									variables.result &= '>';
									variables.result &= thisTag.GeneratedContent; // pass through of content
									variables.result &= variables.crlf & '</div><!-- /.column -->';
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>