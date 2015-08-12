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
	param attributes.rendered 	= true;
	param attributes.role 		= "tabpanel";
	param attributes.style		= "";
	
	
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :

	
								variables.result &= variables.crlf & '<div class="tab-panel"';
	if(attributes.role		!= "")	variables.result &= ' role="#attributes.role#"';
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
								variables.result &= ' >#variables.tab.title#</a>';
								variables.result &= '</li>';
		variables.currentTab++;
		} // end for
								variables.result &= '</ul>';


	// start generate tab content
								variables.result &= variables.crlf & '<div class="tab-content">';
								
	variables.currentTab = 1;							
	for (variables.tab in thisTag.arTab)	{							
							variables.result &= variables.crlf & '<div role="tabpanel"';
		if (attributes.activeIndex == variables.currentTab)	variables.result &= ' class="tab-pane active"';
		if (attributes.activeIndex != variables.currentTab)	variables.result &= ' class="tab-pane"';
							
							variables.result &= ' id="#variables.tab.id#">';
							variables.result &= variables.tab.generatedContent;
							variables.result &= variables.crlf & '</div><!-- /. tab-content -->';
		variables.currentTab++;			
		}	// end for
     
							variables.result &= variables.crlf & '</div><!-- /. tab-panel -->';
	// end generate tab content						

	//thisTag.GeneratedContent = "";    
	if (attributes.rendered)			writeOutput(variables.result);
    
	break;
	}
     
 
</cfscript>