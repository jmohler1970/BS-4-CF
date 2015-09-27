<!---@ Description: Support for panel --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:panel."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.collapsed		= false;
	param attributes.collapsible		= true;
	param attributes.contentClass		= "";
	param attributes.contentStyle		= "";
	param attributes.footer			= "";
     param attributes.footerClass		= "";
     param attributes.footerStyle		= "";
	param attributes.id				= "";
	param attributes.isSafeHTML		= true;
	param attributes.look			= "default";
	param attributes.processed		= true;
	param attributes.rendered 		= true;
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.title			= "";
     param attributes.titleClass		= "";
     param attributes.titleStyle		= "";
     param attributes.tooltip			= "";
     param attributes.tooltipPosition	= "bottom";
     
     
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
	   							variables.result &= '<div class="panel panel-#encodeForHTMLAttribute(attributes.look.lcase())#';
	if (attributes.styleClass != "") 	variables.result &= ' #encodeForHTMLAttribute(attribites.styleClass)#';						
	   							variables.result &= '"';
	if (attributes.id		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if (attributes.style	!= "")	variables.result &= ' style="#encodeForCSS(attributes.style)#"';
	if (attributes.tooltip   != "")    variables.result &= ' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if (attributes.tooltip	!= "")	variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if (attributes.tooltip	!= "")	variables.result &= ' data-toggle="tooltip"';
	   							variables.result &= '>';
	   							
	   							
	if (attributes.title != "") 		variables.result &= '<div class="panel-heading';
	if (attributes.title != "" && attributes.titleClass != "") 	variables.result &= encodeForHTMLAttribute(attributes.titleClass);
	if (attributes.title != "")		variables.result &= '"'; // end class
	if (attributes.title != "" && attributes.titleStyle != "")	variables.result &= ' style="#encodeForCSS(attributes.titleStyle)#"';
	if (attributes.title != "")		variables.result &= '>#encodeForHTML(attributes.title)#</div>';  							
	   							
								variables.result &= '<div class="panel-body'; 
	if(attributes.contentClass	!= "")	variables.result &= ' #encodeForHTMLAttribute(attributes.contentClass)#';		
	   							variables.result &= '"';
	
	if(attributes.contentStyle		!= "")	variables.result &= ' style="#encodeForCSS(attributes.contentStyle)#"';                 
								variables.result &= '>';
								
	if(!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim()); // pass through of content
	if( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean	
								
								
								variables.result &= '</div><!-- /.end panel body -->';

	if (attributes.footer != "") 		variables.result &= '<div class="panel-footer';
	if (attributes.footer != "" && attributes.footerClass != "") 	variables.result &= encodeForHTMLAttribute(attributes.footerClass);
	if (attributes.footer != "")		variables.result &= '"'; // end class
	if (attributes.footer != "" && attributes.footerStyle != "")	variables.result &= ' style="#encodeForCSS(attributes.footerStyle)#"';
	if (attributes.footer != "")		variables.result &= '>#encodeForHTML(attributes.footer)#</div>';  							
								
								variables.result &= '</div><!-- /.end panel -->';
								
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>