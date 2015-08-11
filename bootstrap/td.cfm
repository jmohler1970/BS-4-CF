<!---@ Description: Support for td --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:td."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.binding		= "";
     param attributes.id			= "";
     param attributes.look		= "";
     param attributes.rendered 	= true; // removes content not actuall td
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.text		= "";
     param attributes.tooltip		= "";

	
	break;
     
case "end" :     
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");
          
	   							variables.result &= '<td class="';
	if(attributes.text		!= "")	variables.result &= ' text-#attributes.text#';
	if(attributes.look		!= "")	variables.result &= ' #attributes.look#';
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';		
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';                 
								variables.result &= '>';
	if(attributes.tooltip    != "")	variables.result &=	'<span title="#attributes.tooltip#">';						
	if (attributes.rendered)			variables.result &= thisTag.GeneratedContent; // pass through of content
	if(attributes.tooltip    != "")	variables.result &=	 '</span>';
								variables.result &= '</td>';
     
     
     thisTag.GeneratedContent = "";
     writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>