<!---@ Description: Support for tr --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:tr."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
  
	param attributes.disabled	= false;
	param attributes.id			= "";
	param attributes.legend		= "";
	param attributes.processed 	= true;
     param attributes.rendered 	= true; // removes content not actuall td
	param attributes.style		= "";
	param attributes.styleClass	= "";
	
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     

          
	   							variables.result &= '<fieldset class="';
		if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';		
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';
	if(attributes.disabled)			variables.result &= ' disabled="disabled"';                
								variables.result &= '>';
	if(attributes.legend	!= "")	variables.result &= '<legend>#attributes.legend#</legend>';							
								variables.result &= thisTag.GeneratedContent; // pass through of content
								variables.result &= '</fieldset>';
     
     
     thisTag.GeneratedContent = "";
	if (attributes.rendered)			 writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>