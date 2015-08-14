<!---@ Description: Support for navlink. This this does not generate <ul> --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:navlink."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
  
	param attributes.active		= false;
	param attributes.binding		= "";
	param attributes.disabled	= false;
	param attributes.fragment	= false;
	param attributes.icon		= "";
	param attributes.iconAlign	= "left";
	param attributes.id			= "";
	param attributes.header		= "";
	param attributes.href		= "";
	param attributes.onclick		= "";
	param attributes.processed	= true;
	param attributes.rendered 	= true;
	param attributes.value		= "";
     
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :

	if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) attributes.value = xmlFormat(evaluate("caller.rc.#attributes.binding#"));

     
     if (attributes.value == "" && attributes.header == "")
     								variables.result &= '<li role="separator" class="divider"></li>';
     
     if (attributes.header != "")			variables.result &= '<li class="dropdown-header">#attributes.header#</li>';
     
 	if (attributes.value != "")	{
     	   							variables.result &= '<li>';
	
		   							variables.result &= '<a href="#attributes.href#';
	   	if (attributes.fragment != false)	variables.result &= '###attributes.fragment#';
									variables.result &= '"';
		if(attributes.disabled)			variables.result &= ' class="disabled"';						  			
		if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
		if(attributes.onclick	!= "")	variables.result &= ' onclick="#attributes.onclick#"';
		
 									variables.result &= '>';
 		if (attributes.icon != "" && attributes.iconAlign == "left")	variables.result &= '<i class="glyphicon glyphicon-#attributes.icon#"></i> ';										variables.result &= xmlformat(attributes.value); // pass through of content
 		if (attributes.icon != "" && attributes.iconAlign == "right")	variables.result &= '<i class="glyphicon glyphicon-#attributes.icon#"></i> ';						
									variables.result &= '</a>';
									variables.result &= '</li>
									';
		} // end has value						
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>