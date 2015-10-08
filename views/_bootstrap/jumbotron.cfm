<!---@ Description: Support for Jumbotron --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:jumbotron."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains("jumbotron");
	param attributes.key			= "";
	param attributes.placeholder		= [];
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.tight			= false;
	param attributes.tooltip			= "";
	param attributes.tooltipPosition 	= "bottom";     

	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :

	if(attributes.key 		!= "" )		{
																	thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes.placeholder);
																	attributes.isSafeHTML 	= true;				
																	}	
     
     							variables.result &= variables.crlf;
								variables.result &= '<div class="jumbotron"';
	if(attributes.id		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.tooltip    != "")    variables.result &= ' tooltip="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tight)			variables.result &= ' style="margin : 0; padding-top : 0; padding-right : 0"';
								variables.result &= '>';
								
								
	if(!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								
							

								variables.result &= '</div><!-- /.jumbotron -->';
								variables.result &= variables.crlf;
											
     
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
</cfscript>
