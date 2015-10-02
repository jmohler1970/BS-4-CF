<!---@ Description: Support for tr --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:tr."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";

	param attributes.disabled		= false;
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains("fieldset");;
	param attributes.legend			= "";
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered	 	= true; 
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;

	if (!attributes.processed) exit "exitTag";
	break;

case "end" :


								variables.result &= '<fieldset class="';
	if(attributes.styleClass	!= "")	variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';		
								variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.style		!= "")	variables.result &= ' style="#encodeForCSS(attributes.style)#"';
	if(attributes.disabled)			variables.result &= ' disabled="disabled"';
								variables.result &= '>';
	if(attributes.legend	!= "")	variables.result &= '<legend>#encodeForHTML(attributes.legend)#</legend>';
	
	
	if(!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								

								variables.result &= '</fieldset>';


	thisTag.GeneratedContent = "";
	if (attributes.rendered)			 writeOutput(variables.result);

	break;
	}


</cfscript>
