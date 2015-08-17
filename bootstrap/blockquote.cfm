<!---@ Description: Support for blockquote --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:blockquote."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.binding		= "";
     param attributes.id			= "";
     param attributes.processed 	= true;
     param attributes.reverse		= false;
	param attributes.rendered 	= true; // removes content not actuall td
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.text		= "";
     param attributes.tooltip		= "";


     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = xmlFormat(evaluate("caller.rc.#attributes.binding#"));
	
	   							variables.result &= '<blockquote class="';
	if(attributes.reverse)			variables.result &= ' blockquote-reverse';	
	if(attributes.text		!= "")	variables.result &= ' text-#attributes.text#';	
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';		
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';
	if(attributes.tooltip    != "")	variables.result &=	' title="#attributes.tooltip#"';               
								variables.result &= '>';
							
								variables.result &= trim(thisTag.GeneratedContent); // pass through of content
	
								variables.result &= '</blockquote>';
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
 </cfscript>