<!---@ Description: Support for submit button. If you don't want to submit, use button instead --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:commandButton."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
  
	param attributes.disabled	= false;
	param attributes.icon		= "";
	param attributes.iconAlign	= "left";
	param attributes.id			= "";
	param attributes.lang		= "";
	param attributes.look		= "default";
	param attributes.onclick		= "";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.size		= "";		// large, small, mini
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.tooltip		= "";
     param attributes.value		= "";
     
     
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
	   							variables.result &= '<button type="submit" class="btn btn-#attributes.look#';
	if(attributes.size		!= "")	variables.result &= ' btn-#attributes.size#';
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';
								variables.result &= '"';
	// end class specification
								  							
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.lang		!= "")	variables.result &= ' lang="#attributes.lang#"';
	if(attributes.onclick	!= "")	variables.result &= ' onclick="#attributes.onclick#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';
	if(attributes.tooltip    != "")    variables.result &= ' tooltip="#attributes.tooltip#"';
 	if(attributes.disabled)			variables.result &= ' disabled="disabled"';
 								variables.result &= '>';
//	if (attributes.icon != "" && attributes.iconAlign == "left")	variables &= '<i class="glyphicon glyphicon-#attributes.icon#"></i>';
								variables.result &= attributes.value; // pass through of content
	if (attributes.icon != "" && attributes.iconAlign == "right")	variables.result &= '<i class="glyphicon glyphicon-#attributes.icon#"></i>';							
								variables.result &= '</button>';
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>