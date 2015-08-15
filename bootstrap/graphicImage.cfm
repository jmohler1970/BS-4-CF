<!---@ Description: Support for p --->
<!---@ Also see: http://www.jsftoolbox.com/documentation/help/12-TagReference/html/h_graphicImage.html --->





<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:p."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.alt		= "Image";
	param attributes.binding		= "";
	param attributes.height		= ""; //creates CSS
     param attributes.id			= "";
     param attributes.onClick		= "";
     param attributes.onMouseOver	= "";
     param attributes.processed	= true;
	param attributes.rendered 	= true;
	param attributes.src;
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.text		= "";
     param attributes.tooltip		= "";
     param attributes.width		= ""; // creates CSS


     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = xmlFormat(evaluate("caller.rc.#attributes.binding#"));
	
	   							variables.result &= '<img class="';
	if(attributes.text		!= "")	variables.result &= ' text-#attributes.text#';		
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';		
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
								variables.result &= ' src="#attributes.src#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';
	if(attributes.tooltip    != "")	variables.result &=	' title="#attributes.tooltip#"';               
								variables.result &= ' />';
							
	
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
 </cfscript>