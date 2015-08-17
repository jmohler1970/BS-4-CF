<!---@ Description: Support for submit button. If you don't want to submit, use button instead --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:commandButton."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
  
	param attributes.ajax		= ""; // reserved for future use
	param attributes.binding		= "";
	param attributes.disabled	= false;
	param attributes.icon		= "";
	param attributes.iconAlign	= "left";
	param attributes.iconAwesome	= "";
	param attributes.id			= "";
	param attributes.lang		= "";
	param attributes.look		= "default";
	param attributes.onBlur		= "";
	param attributes.onClick		= "";
	param attributes.onMouseOver	= "";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.rel		= "";
	param attributes.role		= "button";
	param attributes.size		= "";		// large, small, mini
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.tooltip		= "";
	param attributes.type		= "submit";	// as opposed to reset, use button for buttons
	param attributes.value		= "";
     
     
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :

	if(attributes.value != "")											thisTag.generatedContent = xmlFormat(attributes.value);
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) 	thisTag.generatedContent = xmlFormat(evaluate("caller.rc.#attributes.binding#"));    
	
								variables.result &= '<button type="#attributes.type#" class="btn btn-#attributes.look#';
	if(attributes.size		!= "")	variables.result &= ' btn-#attributes.size#';
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';
								variables.result &= '"';
	// end class specification
								  							
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.lang		!= "")	variables.result &= ' lang="#attributes.lang#"';
		
	if(attributes.onBlur	!= "")	variables.result &= ' onBlur="#attributes.onBlur#"';
	if(attributes.onClick	!= "")	variables.result &= ' onClick="#attributes.onClick#"';
	if(attributes.onMouseOver!= "")	variables.result &= ' onMouseOver="#attributes.onMouseOver#"';
	
	if(attributes.role		!= "")	variables.result &= ' role="#attributes.role#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';
	if(attributes.tooltip    != "")    variables.result &= ' tooltip="#attributes.tooltip#"';
 	if(attributes.disabled)			variables.result &= ' disabled="disabled"';
 								variables.result &= '>';
 	
 	// space on end is not an accident							
	if (attributes.icon 		!= "" && attributes.iconAlign == "left")	variables.result &= '<i class="glyphicon glyphicon-#attributes.icon#"></i> ';
	if (attributes.iconAwesome 	!= "" && attributes.iconAlign == "left")	variables.result &= '<i class="fa fa-#attributes.iconAwesome#"></i> ';
								variables.result &= thisTag.generatedContent; // pass through of content
	
	// space at start is not an accident
	if (attributes.icon 		!= "" && attributes.iconAlign == "right")	variables.result &= ' <i class="glyphicon glyphicon-#attributes.icon#"></i>';
	if (attributes.iconAwesome 	!= "" && attributes.iconAlign == "right")	variables.result &= ' <i class="fa fa-#attributes.iconAwesome#"></i>';
						
								variables.result &= '</button>';
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>