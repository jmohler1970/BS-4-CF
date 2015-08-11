<!---@ Description: Support for navbarLinks, NavLink is expected to be inside --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:navbarLinks."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
  
	param attributes.id			= "";
	param attributes.pull		= "";
	param attributes.rendered 	= true;
	param attributes.tooltip		= "";
	
	break;
     
case "end" :     
     
    								variables.result &= '<ul class="nav navbar-nav';
   	if(attributes.pull != "")		variables.result &= ' navbar-#attributes.pull#';					
     	   						variables.result &= '"';
	if (attributes.tooltip    != "")   variables.result &= ' title="#attributes.tooltip#"';
		   						variables.result &= '>';
        							
     	   						variables.result &= thisTag.GeneratedContent;
     	   							
       	   						variables.result &= '</ul>
       	   										';
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>