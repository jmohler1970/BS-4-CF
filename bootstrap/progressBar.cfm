<!---@ Description: Support for progressbar --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:progressBar."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.animated	= false;
	param attributes.binding		= "";
     param attributes.id			= "";
     param attributes.look		= "";
     param attributes.processed	= true;
	param attributes.rendered 	= true;
	param attributes.role 		= "progressbar";
	param attributes.stripped	= false;	if(attributes.animated) attributes.stripped = true;
	param attributes.style		= "";
	param attributes.styleClass	= "";
     param attributes.tooltip		= "";
     param attributes.width		= "";
     


     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = xmlFormat(evaluate("caller.rc.#attributes.binding#"));
	
								variables.result &= '<div class="progress">';
								variables.result &= variables.crlf & '<div class="progress-bar';
	if(attributes.look		!= "")	variables.result &= ' progress-bar-#lcase(attributes.look)#';
	if(attributes.stripped)			variables.result &= ' progress-bar-striped';
	if(attributes.animated)			variables.result &= ' active';
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';		
								variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.role		!= "")	variables.result &= ' role="#attributes.role#"';
								variables.result &= ' style="width : #attributes.width#;';
	if(attributes.style		!= "")	variables.result &= ' #attributes.style#';
								variables.result &= '"';
	
	if(attributes.tooltip    != "")	variables.result &=	' title="#attributes.tooltip#"';               
								variables.result &= '>';
							
								variables.result &= thisTag.GeneratedContent; // pass through of content
	if(thisTag.GeneratedContent	== "")	variables.result &= '&nbsp;';							
	
								variables.result &= variables.crlf & '</div><!-- /.progress-bar -->';
								variables.result &= variables.crlf & '</div><!-- /.progress -->';
								
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
 </cfscript>