<!---@ Description: Support for Glyphicons --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:icon."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.addon		= false;
	param attributes.binding		= "";
	param attributes.id			= "";
	param attributes.name		= "";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.size		= "";
     param attributes.spin		= false;
     param attributes.tooltip		= "";
     
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :
	if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) attributes.name = xmlFormat(evaluate("caller.rc.#attributes.binding#"));    
     
	if(attributes.addon)			variables.result &= '<span class="input-group-addon">';
	   							variables.result &= '<i class="glyphicon glyphicon-#attributes.name#';
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