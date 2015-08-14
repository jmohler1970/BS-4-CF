<!---@ Description: Support for th --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:th."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.binding		= "";
     param attributes.id			= "";
     // param attributes.processed	= true; // unknown how to support
	param attributes.rendered 	= true; // removes content not actual th
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.text		= "";
     param attributes.tooltip		= ""; // It is attached to a span so that table layout does not get destroyed


    // if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = xmlFormat(evaluate("caller.rc.#attributes.binding#"));
     
	   							variables.result &= '<th class="';
	if(attributes.text		!= "")	variables.result &= ' text-#attributes.text#';		
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';		
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';                 
								variables.result &= '>';
	if(attributes.tooltip    != "")	variables.result &=	'<span title="#attributes.tooltip#">';						
	if (attributes.rendered)			variables.result &= thisTag.GeneratedContent; // pass through of content
	if(attributes.tooltip    != "")	variables.result &=	 '</span>';
								variables.result &= '</th>';
     
     
     thisTag.GeneratedContent = "";
     writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>