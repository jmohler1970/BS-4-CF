<!---@ Description: Support for a tags which look like buttons --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:a."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";

	if (!structKeyExists(attributes, "id") && !structKeyExists(attributes, "href")) throw("b:a tag must have either an id or an href. Neither have been provided"); 

  
	param attributes.binding		= "";
	param attributes.disabled	= false;
	param attributes.dropdown	= false;
	param attributes.href		= "";
	param attributes.id			= "";
	param attributes.look	 	= "default";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.size		= "";
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.text		= "";
	param attributes.tooltip		= "";
	
	
	if (!attributes.processed) exit "exitTag";
     break;
     
case "end" :     
	if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = xmlFormat(evaluate("caller.rc.#attributes.binding#"));

	   							variables.result &= '<a class="btn btn-#attributes.look#';
	if(attributes.disabled)			variables.result &= ' disabled';
	if(attributes.dropdown)   		variables.result &= ' datatoggle';
	if(attributes.size 		!= "")   	variables.result &= ' btn-#attributes.size#';
	if(attributes.styleClass != "")	variables.result &= ' #attributes.styleClass#';	
	   							variables.result &= '"';
	   							
	if(attributes.href		!= "")	variables.result &= ' href="#attributes.href#"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
 	if(attributes.tooltip    != "")    variables.result &= ' tooltip="#attributes.tooltip#"';
 	if(attributes.style    	!= "")    variables.result &= ' style="#attributes.style#"';
 	
 	if(attributes.dropdown)			variables.result &= ' data-toggle="dropdown"';
 	
								variables.result &= '>';
								variables.result &= thisTag.GeneratedContent; // pass through of content
	if(attributes.dropdown)			variables.result &= '<span class="caret"></span>';							
								variables.result &= '</a>';
     

  	thisTag.GeneratedContent = ""; // This tag does not have pass through
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>