<!---@ Description: Support for panel --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:panel."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.collapsed	= false;
	param attributes.collapsible	= true;
	param attributes.contentClass	= "";
	param attributes.contentStyle	= "";
	param attributes.footer		= "";
     param attributes.footerClass	= "";
     param attributes.footerStyle	= "";
	param attributes.id			= "";
	param attributes.look		= "default";
	param attributes.processed	= true;
	param attributes.rendered 	= true;
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.title		= "";
     param attributes.titleClass	= "";
     param attributes.titleStyle	= "";
     param attributes.tooltip		= "";
     
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
	   							variables.result &= '<div class="panel panel-#attributes.look#';
	if(attributes.styleClass != "") 	variables.result &= ' #attribites.styleClass#';						
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';
	if(attributes.tooltip    != "")    variables.result &= ' tooltip="#attributes.tooltip#"';
	   							variables.result &= '>';
	   							
	   							
	if (attributes.title != "") 		variables.result &= '<div class="panel-heading';
	if (attributes.title != "" && attributes.titleClass != "") 	variables.result &= attributes.titleClass;
	if (attributes.title != "")		variables.result &= '"'; // end class
	if (attributes.title != "" && attributes.titleStyle != "")	variables.result &= ' style="#attributes.titleStyle#"';
	if (attributes.title != "")		variables.result &= '>#attributes.title#</div>';  							
	   							
								variables.result &= '<div class="panel-body'; 
	if(attributes.contentClass	!= "")	variables.result &= ' #attributes.contentClass#';		
	   							variables.result &= '"';
	
	if(attributes.contentStyle		!= "")	variables.result &= ' style="#attributes.contentStyle#"';                 
								variables.result &= '>';
								variables.result &= thisTag.GeneratedContent; // pass through of content
								variables.result &= '</div><!-- /.end panel body -->';

	if (attributes.footer != "") 		variables.result &= '<div class="panel-footer';
	if (attributes.footer != "" && attributes.footerClass != "") 	variables.result &= attributes.footerClass;
	if (attributes.footer != "")		variables.result &= '"'; // end class
	if (attributes.footer != "" && attributes.footerStyle != "")	variables.result &= ' style="#attributes.footerStyle#"';
	if (attributes.footer != "")		variables.result &= '>#attributes.footer#</div>';  							
								
								variables.result &= '</div><!-- /.end panel -->';
								
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>