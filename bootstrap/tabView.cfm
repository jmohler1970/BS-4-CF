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
	
  
	param attributes.activeIndex	= 1;
	param attributes.processed	= true;
	param attributes.rendered 	= true;
	param attributes.role 		= "tabpanel";
	param attributes.style		= "";
	param attributes.styleClass	= "";
	
	
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :

	
								variables.result &= variables.crlf & '<div class="tab-panel';
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';
								variables.result &= '"';								
	if(attributes.role		!= "")	variables.result &= ' role="#attributes.role#"';
	
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';
								variables.result &= '>';
								variables.result &= variables.crlf & '<ul class="nav nav-tabs" role="tablist">';
	// generate tabs
	for (variables.tab in thisTag.arTab)	{
								variables.result &= variables.crlf & '<li role="presentation"';
		if (attributes.activeIndex == variables.currentTab)	variables.result &= ' class="active"';
		if (variables.tab.disabled)	variables.result &= ' class="disabled"';
								variables.result &= '>';
								variables.result &= '<a';
		if (!variables.tab.disabled)	variables.result &= ' href="###variables.tab.id#"';
		if (!variables.tab.disabled)	variables.result &= ' aria-controls="#variables.tab.id#"';
		if (!variables.tab.disabled)	variables.result &= ' role="#variables.tab.id#"';
		if (!variables.tab.disabled)	variables.result &= ' data-toggle="tab"';
		if (!variables.tab.disabled && variables.tab.dataUrl != "")	variables.result &= ' data-url="' & variables.tab.dataUrl & '"';
								variables.result &= ' >#variables.tab.title#</a>';
								variables.result &= '</li>';
		variables.currentTab++;
		} // end for
								variables.result &= variables.crlf & '</ul>';


	// start generate tab content
								variables.result &= variables.crlf;
								variables.result &= variables.crlf & '<div class="tab-content">';
								
	variables.currentTab = 1;							
	for (variables.tab in thisTag.arTab)	{							
							variables.result &= variables.crlf & '<section role="tabpanel"';
		if (attributes.activeIndex == variables.currentTab)	variables.result &= ' class="tab-pane active"';
		if (attributes.activeIndex != variables.currentTab)	variables.result &= ' class="tab-pane"';
							
							variables.result &= ' id="#variables.tab.id#">';
							variables.result &= variables.tab.generatedContent;
							variables.result &= variables.crlf & '</section>';
		variables.currentTab++;			
		}	// end for
     
							variables.result &= variables.crlf & '</div><!-- /. tab-content -->';
							variables.result &= variables.crlf & '</div><!-- /. tab-panel -->';
	// end generate tab content						

	//thisTag.GeneratedContent = "";    
	if (attributes.rendered)			writeOutput(variables.result);
    
	break;
	}
</cfscript>


<!--- 
To enable AJAX, you need to include code like

http://stackoverflow.com/questions/8456974/how-to-use-ajax-loading-with-bootstrap-tabs

<script type="text/javascript">	
$( document ).ready(function() {
	
	// load active tab no matter what
	$('section.active').load($('li.active a[data-url]').attr('data-url'), function (data) {
		$('.active a').tab('show');
		});
		
	
	// load normal tab clicks
	$('li a[data-url]').click(function(e) {
	    e.preventDefault();
	    
	    var targ = $(this).attr('data-url');
	    
	    var href = this.hash;
	    
		$(href).load(targ, function(data) {
			$(this).tab('show');
		});
	
	});


});
</script>

 --->





