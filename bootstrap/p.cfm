<!---@ Description: Support for p --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:p."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.binding		= "";
     param attributes.id			= "";
     param attributes.lead		= false;
     param attributes.processed	= true;
	param attributes.rendered 	= true;
	param attributes.static		= false;
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.text		= "";
     param attributes.tooltip		= "";
     

     variables.myClass = "";
     if(attributes.lead)				variables.result &= 'lead ';
	if(attributes.static)			variables.result &= 'form-control-static ';						
	if(attributes.text		!= "")	variables.myClass &= 'text-#attributes.text# ';		
	if(attributes.styleClass	!= "")	variables.myClass &= '#attributes.styleClass# ';		


     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = xmlFormat(evaluate("caller.rc.#attributes.binding#"));
	
								variables.result &= variables.crlf;
	if(variables.myClass == "")		variables.result &= '<p';
	if(variables.myClass != "")		variables.result &= '<p class="#variables.myClass#"';							
				
		   							
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';
	if(attributes.tooltip    != "")	variables.result &=	' title="#attributes.tooltip#"';               
								variables.result &= '>';
							
								variables.result &= trim(thisTag.GeneratedContent); // pass through of content
	
								variables.result &= '</p>';
								variables.result &= variables.crlf;
								
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
 </cfscript>