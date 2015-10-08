<!---@ Description: Support for table --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:table."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);

	param attributes.bordered		= false;
     param attributes.condensed		= true;
     param attributes.hover			= false;
     param attributes.id				= "";
     param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains("table"); // this is set to true because the content may be very large and td and th should have cleaned it
    	//	param attributes.key			= "";	//	content not directly generated, do not put td,th in language files
	//	param attributes.placeholder		= [];	//	see key
  
     param attributes.processed		= true;
     param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true; // removes content not actuall td
	param attributes.responsive		= true;
	param attributes.striped			= true;
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
     param attributes.tooltip			= "";
     param attributes.tooltipPosition	= "bottom";
     

	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
          
          
     if(attributes.responsive) 		variables.result &= '<div class="table-responsive">';  
     							variables.result &= variables.crlf;  
	   							variables.result &= '<table class="table';
	if(attributes.bordered)			variables.result &= ' table-bordered';
	if(attributes.condensed)			variables.result &= ' table-condensed';
	if(attributes.hover)			variables.result &= ' table-hover';
	if(attributes.striped)			variables.result &= ' table-striped';
				
	if(attributes.styleClass	!= "")	variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';		
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.style		!= "")	variables.result &= ' style="#encodeForCSS(attributes.style)#"';
	if(attributes.tooltip    != "")	variables.result &=	' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")				variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")				variables.result &= ' data-toggle="tooltip"';						
	               
								variables.result &= '>';
								
	
	if(!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								

		
							
								variables.result &= '</table>';
     if(attributes.responsive) 		variables.result &= '</div>';    
	
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>