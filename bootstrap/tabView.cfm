<!---@ Description: Support for tab --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:tab."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf =  chr(13) & chr(10);
	

	
	thisTag.arTab 		= [];
	variables.currentTab = 1;
	variables.needsJS	= false;
  
	param attributes.activeIndex		= 1;
	param attributes.isSafeHTML		= true;
	param attributes.processed		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	param attributes.role 			= "tabpanel";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.style			= "";
	param attributes.styleClass		= "";
	
	
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :

	
								variables.result &= variables.crlf & '<div class="tab-panel';
	if(attributes.styleClass	!= "")	variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';
								variables.result &= '"';								
	if(attributes.role		!= "")	variables.result &= ' role="#encodeForHTMLAttribute(attributes.role)#"';
	
	if(attributes.style		!= "")	variables.result &= ' style="#encodeForCSS(attributes.style)#"';
								variables.result &= '>';
								variables.result &= variables.crlf & '<ul class="nav nav-tabs" role="tablist">';
	// generate tabs
	for (variables.tab in thisTag.arTab)	{
		if (variables.tab.title != "")	{
									variables.result &= variables.crlf & '<li role="presentation"';
			if (attributes.activeIndex == variables.currentTab)	variables.result &= ' class="active"';
			if (variables.tab.disabled)	variables.result &= ' class="disabled"';
									variables.result &= '>';
									variables.result &= '<a';
			if (!variables.tab.disabled)	variables.result &= ' href="###variables.tab.id#"';
			if (!variables.tab.disabled)	variables.result &= ' aria-controls="#variables.tab.id#"';
			if (!variables.tab.disabled)	variables.result &= ' role="#encodeForHTMLAttribute(variables.tab.id)#"';
			if (!variables.tab.disabled)	variables.result &= ' data-toggle="tab"';
			if (!variables.tab.disabled && variables.tab.dataUrl != "")	{
									variables.needsJS = true;
									variables.result &= ' data-url="' & variables.tab.dataUrl & '"';
									}
									variables.result &= ' >#encodeForHTML(variables.tab.title)#</a>';
									variables.result &= '</li>';
			variables.currentTab++;
			} // end if title exists
		} // end for
		
		if (trim(thisTag.generatedContent) != "")	{
									variables.result &= variables.crlf & '<li role="presentation" class="dropdown"><!-- Content passthrough -->';
								
			if(!attributes.isSafeHTML)	variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
			if( attributes.isSafeHTML)	variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								
						
									variables.result &= '</li>';
									}	
						
						
								variables.result &= variables.crlf & '</ul>';


	// start generate tab content
								variables.result &= variables.crlf;
								variables.result &= variables.crlf & '<div class="tab-content">';
								
	variables.currentTab = 1;							
	for (variables.tab in thisTag.arTab)	{							
								variables.result &= variables.crlf & '<section role="tabpanel"';
		if (attributes.activeIndex == variables.currentTab)	variables.result &= ' class="tab-pane active"';
		if (attributes.activeIndex != variables.currentTab)	variables.result &= ' class="tab-pane"';
							
								variables.result &= ' id="#encodeForHTMLAttribute(variables.tab.id)#">';
								
								variables.result &= getSafeHTML(variables.tab.generatedContent);	
	
								variables.result &= variables.crlf & '</section>';
		variables.currentTab++;			
		}	// end for
     
								variables.result &= variables.crlf & '</div><!-- /. tab-content -->';
								variables.result &= variables.crlf & '</div><!-- /. tab-panel -->';
	// end generate tab content	
	
	
	// Now do Javascript
	if(variables.needsJS)			{			
								variables.result &= variables.crlf & '<script type="text/javascript">';
								variables.result &= variables.crlf & '$( document ).ready(function() {';
								variables.result &= variables.crlf & '// load active tab no matter what';
								variables.result &= variables.crlf & '$("section.active").load($("li.active a[data-url]").attr("data-url"), function (data) {';
								variables.result &= variables.crlf & '$(".active a").tab("show");';
								variables.result &= variables.crlf & '});';
								variables.result &= variables.crlf & '// load normal tab clicks';
								variables.result &= variables.crlf & '$("li a[data-url]").click(function(e) {';
								variables.result &= variables.crlf & 'e.preventDefault();';
								variables.result &= variables.crlf & 'var targ = $(this).attr("data-url");';
								variables.result &= variables.crlf & 'var href = this.hash;';
								variables.result &= variables.crlf & '$(href).load(targ, function(data) {';
								variables.result &= variables.crlf & '$(this).tab("show");';
								variables.result &= variables.crlf & '});';
								variables.result &= variables.crlf & '});';
								variables.result &= variables.crlf & '</script>';
								}
						

	thisTag.GeneratedContent = "";    
	if (attributes.rendered)			writeOutput(variables.result);
    
	break;
	}
</cfscript>

     


<!--- 
To enable AJAX, you need to include code like

http://stackoverflow.com/questions/8456974/how-to-use-ajax-loading-with-bootstrap-tabs

--->





