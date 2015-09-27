<!---@ Description: Support for h2 --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:h2."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.binding		= "";
	param attributes.id			= "";
	param attributes.isSafeHTML	= false;
	param attributes.processed 	= true;
	param attributes.rendered 	= true; 
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.text		= "";
	param attributes.tooltip		= "";
	param attributes.tooltipPosition = "bottom";


	variables.myClass = "";
	if(attributes.text		!= "")	variables.myClass &= 'text-#attributes.text# ';		
	if(attributes.styleClass	!= "")	variables.myClass &= '#attributes.styleClass# ';	


	
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :
	if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");
	
	
	if(variables.myClass == "")		variables.result &= '<h2';
	if(variables.myClass != "")		variables.result &= '<h2 class="#encodeForHTMLAttribute(variables.myClass)#"';

	if(attributes.id		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.style		!= "")	variables.result &= ' style="#encodeForCSS(attributes.style)#"';
	if(attributes.tooltip    != "")	variables.result &=	' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-toggle="tooltip"';               
								variables.result &= '>';
								
	if(!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim()); // pass through of content
	if( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean							
							
								variables.result &= '</h2>' & variables.crlf;
     
    
     
	thisTag.GeneratedContent = "";
 	if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
 </cfscript>