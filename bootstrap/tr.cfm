<!---@ Description: Support for tr --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:tr."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.id			= "";
	param attributes.look		= "";
	param attributes.processed	= true;
	param attributes.rendered 	= true;
	param attributes.style		= "";
	param attributes.styleClass	= "";
	
	if(!ArrayContains(['','active','success','info','warning','danger'],attributes.look)) throw "tr tag has invalid contextual class option";
	
	variables.myClass = "";
     if(attributes.look		!= "")	variables.myClass &= '#attributes.look# ';	
     if(attributes.styleClass	!= "")	variables.myClass &= '#attributes.styleClass# ';
     
     
   	// We will be passing through HTML5 data-, Mouse Events, and Angular JS
	variables.arAttrSeries = [];
	
	for(variables.myKey in attributes)	{
		if (left(variables.myKey, 5) == "data-" || left(variables.myKey, 2) == "on" || left(variables.myKey, 3) == "ng-")	{
			ArrayAppend(arAttrSeries, {key = variables.myKey, value = attributes[variables.myKey] });
			} // end if	
		}	// end for

	
	
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :

	if(variables.myClass 	== "")			variables.result &= '<tr';
	if(variables.myClass 	!= "")			variables.result &= '<tr class="#variables.myClass#"';
	if(attributes.id		!= "")			variables.result &= ' id="#attributes.id#"';
	
	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #lcase(variables.myAttr.key)#="#variables.myAttr.value#"';
	
	if(attributes.style		!= "")			variables.result &= ' style="#attributes.style#"';                 
										variables.result &= '>';
										variables.result &= variables.crlf;
										variables.result &= thisTag.GeneratedContent; // pass through of content
										variables.result &= variables.crlf;
										variables.result &= '</tr>';
										variables.result &= variables.crlf;
     
     
     thisTag.GeneratedContent = "";
	if (attributes.rendered)			 writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>