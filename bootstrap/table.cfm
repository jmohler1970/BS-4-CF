<!---@ Description: Support for table --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:table."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);

	param attributes.bordered	= false;
     param attributes.condensed	= true;
     param attributes.hover		= false;
     param attributes.id			= "";
     param attributes.processed	= true;
	param attributes.rendered 	= true; // removes content not actuall td
	param attributes.responsive	= true;
	param attributes.striped		= true;
	param attributes.style		= "";
	param attributes.styleClass	= "";
     param attributes.tooltip		= "";

	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
          
          
     if(attributes.responsive) 		variables.result &= '<div class="table.responsive">';    
	   							variables.result &= '<table class="table';
	if(attributes.bordered)			variables.result &= ' table-bordered';
	if(attributes.condensed)			variables.result &= ' table-condensed';
	if(attributes.hover)			variables.result &= ' table-hover';
	if(attributes.striped)			variables.result &= ' table-striped';
				
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';		
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';
	if(attributes.tooltip    != "")	variables.result &=	' title="#attributes.tooltip#"';						
	               
								variables.result &= '>';
								variables.result &= thisTag.GeneratedContent; // pass through of content
								variables.result &= '</table>';
     if(attributes.responsive) 		variables.result &= '</div>';    
	
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>