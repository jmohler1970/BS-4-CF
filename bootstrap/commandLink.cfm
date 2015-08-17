<!---@ Description: Support for a tags which look like buttons --->
<!---@ Also see: http://www.jsftoolbox.com/documentation/help/12-TagReference/html/h_commandLink.html --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:commandLink."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";

	if (!structKeyExists(attributes, "id") && !structKeyExists(attributes, "action")) throw("b:commandLink tag must have either an id or an action. Neither have been provided"); 

  
	param attributes.action		= "";
	param attributes.binding		= "";
	param attributes.disabled	= false;
	param attributes.dropdown	= false;
	param attributes.icon		= "";
	param attributes.iconAlign	= "left";
	param attributes.iconAwesome	= "";
	param attributes.id			= "";
	param attributes.look	 	= "default";
	param attributes.onBlur		= "";
	param attributes.onClick		= "";
	param attributes.onMouseOver	= "";
	param attributes.processed 	= true;
	param attributes.rel		= "";
	param attributes.rendered 	= true;
	param attributes.role		= "button";
	param attributes.size		= "";
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.target		= "";
	param attributes.text		= "";
	param attributes.tooltip		= "";
	param attributes.value		= "";
	
	
	if (!attributes.processed) exit "exitTag";
     break;
     
case "end" :

	
	if(attributes.value != "")											thisTag.generatedContent = xmlFormat(attributes.value);	
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) 	thisTag.generatedContent = xmlFormat(evaluate("caller.rc.#attributes.binding#"));

	if(attributes.look == 'link')				variables.result &= '<a class="';						// we don't do anything special so that link look like links
	if(attributes.look != 'link')				variables.result &= '<a class="btn btn-#attributes.look#';
	if(attributes.disabled)					variables.result &= ' disabled';
	if(attributes.dropdown)   				variables.result &= ' datatoggle';
	if(attributes.size 		!= "")		   	variables.result &= ' btn-#attributes.size#';
	if(attributes.styleClass != "")			variables.result &= ' #attributes.styleClass#';	
	   									variables.result &= '"';
	   							
	if(attributes.action	!= "")			variables.result &= ' href="#attributes.action#"';
	if(attributes.id		!= "")			variables.result &= ' id="#attributes.id#"';
	
	if(attributes.onBlur	!= "")			variables.result &= ' onBlur="#attributes.onBlur#"';
	if(attributes.onClick	!= "")			variables.result &= ' onClick="#attributes.onClick#"';
	if(attributes.onMouseOver!= "")			variables.result &= ' onMouseOver="#attributes.onMouseOver#"';
 	
 	if(attributes.rel		!= "")			variables.result &= ' rel="#attributes.rel#"';
 	if(attributes.target	!= "")			variables.result &= ' target="#attributes.target#"';
 	if(attributes.tooltip    != "")			variables.result &= ' tooltip="#attributes.tooltip#"';
 	if(attributes.style    	!= "")			variables.result &= ' style="#attributes.style#"';
 	
 	if(attributes.dropdown)					variables.result &= ' data-toggle="dropdown"';
 										variables.result &= '>';
								
	// space on end is not an accident							
	if (attributes.icon 		!= "" && attributes.iconAlign == "left")	variables.result &= '<i class="glyphicon glyphicon-#attributes.icon#"></i> ';
	if (attributes.iconAwesome 	!= "" && attributes.iconAlign == "left")	variables.result &= '<i class="fa fa-#attributes.iconAwesome#"></i> ';
										variables.result &= thisTag.generatedContent; // pass through of content
	
	
	// space at start is not an accident
	if (attributes.icon 		!= "" && attributes.iconAlign == "right")	variables.result &= ' <i class="glyphicon glyphicon-#attributes.icon#"></i>';
	if (attributes.iconAwesome 	!= "" && attributes.iconAlign == "right")	variables.result &= ' <i class="fa fa-#attributes.iconAwesome#"></i>';							
			
								
	if(attributes.dropdown)					variables.result &= '<span class="caret"></span>';							
										variables.result &= '</a>';
     

  	thisTag.GeneratedContent = ""; // This tag does not have pass through
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>