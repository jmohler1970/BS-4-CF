<!---@ Description: Support for badge --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:badge."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
  	param attributes.binding		= "";
	param attributes.id			= "";
	param attributes.look	 	= "warning";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.tooltip		= "";
	param attributes.value		= "";
	
	

	if (structKeyExists(attributes, "text")) throw "attributes.text is an invalid option. Don't even think of using it";
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) attributes.text = xmlformat(evaluate("caller.rc.#attributes.binding#"));
          
     
								variables.result &= '<span class="badge badge-#lcase(attributes.look)#"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';							
	if(attributes.tooltip    != "")    variables.result &= ' title="#attributes.tooltip#"';							
								variables.result &= '>';
								variables.result &= attributes.value; // pass through of content
								variables.result &= '</span>';
								
	
	thisTag.GeneratedContent = ""; // This tag does not have pass through
	
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>