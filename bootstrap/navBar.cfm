<!---@ Description: Support for navbar --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:navBar."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.brand		= "";
	param attributes.brandHref	= "";
	param attributes.fixed		= "";
	param attributes.inverse		= false;
     param attributes.rendered 	= true;
	param attributes.static		= false;
	
	break;
     
case "end" :     
     
     if (!attributes.inverse)		variables.result &= '<nav class="navbar navbar-default';
     if (attributes.inverse)		variables.result &= '<nav class="navbar navbar-inverse';
	if (attributes.fixed != "")	variables.result &= ' navbar-fixed-#attributes.fixed#';     
     						variables.result &= ' ">';
     						variables.result &= crlf & '<div class="container-fluid">';
     						variables.result &= crlf & '<div class="navbar-header">';
     						
							variables.result &= '<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" aria-expanded="false">';
							variables.result &= crlf & '<span class="sr-only">Toggle navigation</span>';
     						variables.result &= crlf & '<span class="icon-bar"></span>';
     						variables.result &= crlf & '<span class="icon-bar"></span>';
     						variables.result &= crlf & '<span class="icon-bar"></span>';
     						variables.result &= crlf & '</button>';

	if (attributes.brand != "" && attributes.brandHref == "")	variables.result &= '<a class="navbar-brand" href="##">#attributes.Brand#</a>';						
	if (attributes.brand != "" && attributes.brandHref != "")	variables.result &= '<a class="navbar-brand" href="#attributes.brandHref#">#attributes.Brand#</a>';						

							variables.result &= '</div>';	// end of Brand and Hamburger area
							
	// Collect the nav links, forms, and other content for toggling 
							variables.result &= '<div class="collapse navbar-collapse">';
							variables.result &= thisTag.GeneratedContent;
							variables.result &= '</div><!-- /.navbar-collapse -->
							';
							variables.result &= '</div><!-- /.container-fluid -->
							';
							variables.result &= '</nav>
							';
							
     
      thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>