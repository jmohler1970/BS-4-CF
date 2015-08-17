<!---@ Description: Support for h1 --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:h1."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.binding		= "";
	param attributes.id			= "";
	param attributes.pageHeader	= false;
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.text		= "";
	param attributes.tooltip		= "";
	
	
	variables.myClass = "";
	if(attributes.text		!= "")	variables.myClass &= 'text-#attributes.text# ';		
	if(attributes.styleClass	!= "")	variables.myClass &= '#attributes.styleClass# ';		


	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = xmlformat(evaluate("caller.rc.#attributes.binding#"));
     

	if(attributes.pageHeader)		variables.result &= '<div class="page-header">';
	if(variables.myClass == "")		variables.result &= '<h1';
	if(variables.myClass != "")		variables.result &= '<h1 class="#variables.myClass#"';

	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';
	if(attributes.tooltip    != "")	variables.result &=	' title="#attributes.tooltip#"';               
								variables.result &= '>';
							
								variables.result &= trim(thisTag.GeneratedContent); // pass through of content
	
								variables.result &= '</h1>' & variables.crlf;
     if(attributes.pageHeader)		variables.result &= '</div><!-- /.page-header -->';
     
     
     
     
	thisTag.GeneratedContent = "";
	if (attributes.rendered)			writeOutput(variables.result);
    
 	break;
	}
 </cfscript>