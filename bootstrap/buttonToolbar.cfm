<!---@ Description: Support for buttonToolbar --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:buttonToolbar."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
 	param attributes.id				= "";
 	param attributes.isSafeHTML		= false;
	param attributes.processed 		= true;
	param attributes.rendered		= true;
	param attributes.size			= "";
	param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";


	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
								variables.result &= '<div class="btn-toolbar';
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id.encodeForHTMLAttribute()#"';
	if(attributes.tooltip    != "")	variables.result &=	' title="#attributes.tooltip.encodeForHTMLAttribute()#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-toggle="tooltip"';          
								variables.result &= '>';
								
								
	if(!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim()); // pass through of content
	if( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								

								variables.result &= '</div><!-- /.btn-toolbar -->';
     
     
	thisTag.GeneratedContent = "";
	if (attributes.rendered)			writeOutput(variables.result);
    
 	break;
	}
 </cfscript>