<!---@ Description: Support for button. If you want to submit, use commandButton instead --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:button."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.binding		= "";
	param attributes.disabled	= false;
	param attributes.dismiss		= false;
	param attributes.icon		= "";
	param attributes.iconAlign	= "left";
	param attributes.id			= "";
	param attributes.lang		= "";
	param attributes.look		= "default";
	param attributes.onclick		= "";
	param attributes.rendered 	= true;
	param attributes.size		= "";		// large, small, mini
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.tooltip		= "";
	param attributes.tooltipPosition = "bottom";
     param attributes.value		= "";
     
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) attributes.value = evaluate("caller.rc.#attributes.binding#");
     
	break;
     
case "end" :     
     
	   							variables.result &= '<button type="button" class="btn btn-#attributes.look#';
	if(attributes.size		!= "")	variables.result &= ' btn-#attributes.size#';
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';
								variables.result &= '"';
	// end class specification
	
	if(attributes.dismiss	!= "")	variables.result &= ' data-dismiss="#attributes.dismiss#"';
	if(structKeyExists(attributes, "data-target"))	variables.result &= ' data-target="' & attributes['data-target'] & '"';
	if(structKeyExists(attributes, "data-toggle"))	variables.result &= ' data-toggle="' & attributes['data-toggle'] & '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.lang		!= "")	variables.result &= ' lang="#attributes.lang#"';
	if(attributes.onclick	!= "")	variables.result &= ' onclick="#attributes.onclick#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';
	if(attributes.tooltip    != "")    variables.result &= ' title="#attributes.tooltip#"';
	if(attributes.tooltip    != "")    variables.result &= ' data-toggle="tooltip"';
	if(attributes.tooltip    != "")    variables.result &= ' data-placement="#attributes.tooltipPosition#"';
	if(attributes.disabled)			variables.result &= ' disabled="disabled"';
 								variables.result &= '>';
	if (attributes.icon != "" && attributes.iconAlign == "left")	variables.result &= '<i class="glyphicon glyphicon-#attributes.icon#"></i> ';
														variables.result &= attributes.value; // pass through of content
	if (attributes.icon != "" && attributes.iconAlign == "right")	variables.result &= ' <i class="glyphicon glyphicon-#attributes.icon#"></i>';							
								variables.result &= '</button>';
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>