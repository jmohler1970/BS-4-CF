<!---@ Description: Support for Font Awesome --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:iconAwesome."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.addon		= false;
	param attributes.binding		= "";
	param attributes.flip		= "";
	param attributes.id			= "";
	param attributes.look		= "";
	param attributes.name		= "";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.rotate		= "";
	param attributes.size		= "";
	param attributes.spin		= false;
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.tooltip		= "";
	
	
	variables.arAttrSeries = [];
	
	
	// We will be passing through HTML5 data-, Mouse Events, and Angular JS
	for(variables.myKey in attributes)	{
		if (left(variables.myKey, 5) == "data-" || left(variables.myKey, 2) == "on" || left(variables.myKey, 3) == "ng-")	{
			ArrayAppend(arAttrSeries, {key = variables.myKey, value = attributes[variables.myKey] });
			} // end if	
		}	// end for
     
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :
	if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) attributes.name = xmlFormat(evaluate("caller.rc.#attributes.binding#"));   
     
	if(attributes.addon)			variables.result &= '<span class="input-group-addon">';
								variables.result &= '<i class="fa fa-#attributes.name#';
	if(attributes.look 		!= "")	variables.result &= ' text-#lcase(attributes.look)#';
	if(attributes.flip 		== "H")	variables.result &= ' fa-flip-horizonal';
	if(attributes.flip 		== "V")	variables.result &= ' fa-flip-vertical';
  	if(attributes.rotate 	== "R")	variables.result &= ' fa-rotate-90';
	if(attributes.rotate 	== "L")	variables.result &= ' fa-rotate-270';				
	   							
	if(attributes.size != "")		variables.result &= ' fa-#attributes.size#';
	if(attributes.spin)				variables.result &= ' fa-spin';
	if(attributes.styleClass != "") 	variables.result &= ' #attributes.styleClass#';							
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	
	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #lcase(variables.myAttr.key)#="#variables.myAttr.value#"';
	
	if(attributes.style 	!= "")	variables.result &= ' style="#attributes.style#"';                           
	if(attributes.tooltip    != "")    variables.result &= ' title="#attributes.tooltip#"';
								variables.result &= '></i>';
	if(attributes.addon)			variables.result &= '</span>';
     
     
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>