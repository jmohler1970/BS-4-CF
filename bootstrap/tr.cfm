<!---@ Description: Support for tr --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:tr."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
  
	param attributes.binding		= "";
     param attributes.id			= "";
     param attributes.look		= "";
     param attributes.rendered 	= true; // removes content not actuall td
	param attributes.style		= "";
	param attributes.styleClass	= "";
	
	break;
     
case "end" :     
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");
          
	   							variables.result &= '<tr class="';
	if(attributes.look		!= "")	variables.result &= ' #attributes.look#';
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';		
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';                 
								variables.result &= '>';
								variables.result &= thisTag.GeneratedContent; // pass through of content
								variables.result &= '</tr>';
     
     
     thisTag.GeneratedContent = "";
	if (attributes.rendered)			 writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>