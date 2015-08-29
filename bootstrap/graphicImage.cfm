<!---@ Description: Support for p --->
<!---@ Also see: http://www.jsftoolbox.com/documentation/help/12-TagReference/html/h_graphicImage.html --->





<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:p."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.alt		= ""; // alt="" will be rendered
	param attributes.binding		= "";
	param attributes.height		= ""; //creates CSS
     param attributes.id			= "";
     param attributes.processed	= true;
	param attributes.rendered 	= true;
	param attributes.shape		= ""; //rounded, circle, thumbnail
	param attributes.src;
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.text		= "";
     param attributes.tooltip		= "";
     param attributes.width		= ""; // creates CSS
     
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
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = xmlFormat(evaluate("caller.rc.#attributes.binding#"));
	
	   							variables.result &= '<img class="';
	if(attributes.shape		!= "")	variables.result &= ' img-#lcase(attributes.shape)#';
	if(attributes.text		!= "")	variables.result &= ' text-#attributes.text#';
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	
	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #lcase(variables.myAttr.key)#="#variables.myAttr.value#"';
	
								variables.result &= ' src="#attributes.src#"';
	
	// start style
	if(attributes.style		!= "" || attributes.height != "" || attributes.width != "")	{
								variables.result &= ' style="';
								}	
	if(attributes.height	!= "")	variables.result &= ' height : #attributes.height#px;';
	if(attributes.width		!= "")	variables.result &= ' width  : #attributes.width#px;';
								variables.result &= ' #attributes.style#"';
	// end style
	
								variables.result &= ' alt="#attributes.alt#"';
	if(attributes.tooltip    != "")	variables.result &=	' title="#attributes.tooltip#"';               
								variables.result &= ' />';
							
	
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
 </cfscript>