<!---@ Description: Support for label --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:label."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.binding		= "";
	param attributes.id			= "";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.severity 	= "default";
	param attributes.text		= "";
	param attributes.tooltip		= "";
	
	
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) attributes.text = xmlFormat(evaluate("caller.rc.#attributes.binding#"));
     
	
	   							variables.result &= '<span class="label label-#attributes.severity#"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
 	if(attributes.tooltip    != "")    variables.result &= ' tooltip="#attributes.tooltip#"';
								variables.result &= '>';
								variables.result &= attributes.text; // pass through of content
								variables.result &= '</span>';
     

  	thisTag.GeneratedContent = ""; // This tag does not have pass through
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>