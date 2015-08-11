<!---@ Description: Support for Font Awesome --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:iconAwesome."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.addon		= false;
	param attributes.flip		= "";
	param attributes.id			= "";
	param attributes.name;
	param attributes.rendered 	= true;
	param attributes.rotate		= "";
	param attributes.size		= "";
     param attributes.spin		= false;
     param attributes.tooltip		= "";
     
	break;
     
case "end" :     
     
	if(attributes.addon)			variables.result &= '<span class="input-group-addon">';
	   							variables.result &= '<i class="fa fa-#attributes.name#';
	if(attributes.flip == "H")		variables.result &= ' fa-flip-horizonal';
	if(attributes.flip == "V")		variables.result &= ' fa-flip-vertical';
  	if(attributes.rotate == "R")		variables.result &= ' fa-rotate-90';
	if(attributes.rotate == "L")		variables.result &= ' fa-rotate-270';						
	   							
	if(attributes.size != "")		variables.result &= ' fa-#attributes.size#';
	if(attributes.spin)				variables.result &= ' fa-spin';	   							
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';                              
	if(attributes.tooltip    != "")    variables.result &= ' tooltip="#attributes.tooltip#"';
								variables.result &= '></i>';
	if(attributes.addon)			variables.result &= '</span>';
     
     
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>