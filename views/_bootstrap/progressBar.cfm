<!---@ Description: Support for progressbar --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:progressBar."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.animated		= false;
	param attributes.binding			= "";
     param attributes.id				= "";
     param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains("progressBar");
     param attributes.look			= "";
	param attributes.key			= "";
	param attributes.placeholder		= [];
     param attributes.processed		= true;
     param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	param attributes.role 			= "progressbar";
	param attributes.stripped		= false;	if(attributes.animated) attributes.stripped = true;
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
     param attributes.tooltip			= "";
     param attributes.tooltipPosition	= "bottom";
     param attributes.width			= "";
     
     
     
     if (attributes.keyExists("text")) 						throw "attributes.text is an invalid option. Don't even think of using it";
     
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :
     if(attributes.binding != "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");
     if(attributes.key 		!= "" )		{
																	thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes.placeholder);
																	attributes.isSafeHTML 	= true;				
																	}	
	
								variables.result &= '<div class="progress">';
								variables.result &= variables.crlf & '<div class="progress-bar';
	if(attributes.look		!= "")	variables.result &= ' progress-bar-#encodeForHTMLAttribute(attributes.look.lcase())#';
	if(attributes.stripped)			variables.result &= ' progress-bar-striped';
	if(attributes.animated)			variables.result &= ' active';
	if(attributes.styleClass	!= "")	variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';		
								variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.role		!= "")	variables.result &= ' role="#encodeForHTMLAttribute(attributes.role)#"';
								variables.result &= ' style="width : #encodeForHTMLAttribute(attributes.width)#;';
	if(attributes.style		!= "")	variables.result &= ' #encodeForCSS(attributes.style)#';
								variables.result &= '"';
	
	if(attributes.tooltip    != "")	variables.result &=	' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if (attributes.tooltip	!= "")	variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if (attributes.tooltip	!= "")	variables.result &= ' data-toggle="tooltip"';            
								variables.result &= '>';
								
	if(!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								
							
							
						
								
	if(thisTag.GeneratedContent	== "")	variables.result &= '&nbsp;';							
	
								variables.result &= variables.crlf & '</div><!-- /.progress-bar -->';
								variables.result &= variables.crlf & '</div><!-- /.progress -->';
								
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
 </cfscript>