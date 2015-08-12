<!---@ Description: Support for navbarLinks, NavLink is expected to be inside --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:navbarLinks."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.id			= "";
	param attributes.processed 	= true;
	param attributes.pull		= "";
	param attributes.rendered 	= true;
	param attributes.tooltip		= "";
	
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
    								variables.result &= '<ul class="nav navbar-nav';
   	if(attributes.pull != "")		variables.result &= ' navbar-#attributes.pull#';					
     	   						variables.result &= '"';
	if (attributes.tooltip    != "")   variables.result &= ' title="#attributes.tooltip#"';
		   						variables.result &= '>';
        							
     	   						variables.result &= variables.crlf & thisTag.GeneratedContent;
     	   							
       	   						variables.result &= variables.crlf & '</ul><!-- /.nav -->';
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>