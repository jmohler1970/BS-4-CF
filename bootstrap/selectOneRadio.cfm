<!--- This is a wrapper that matches Awesome Bootstrap Checkbox. But it can be updated to support anything --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:radio."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :



	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
	
	thisTag.arOption 			= [];
  
	param attributes.square		= false;		// make it look like check
	param attributes.checked		= false;
	param attributes.disabled	= false;
	param attributes.name		= "";
	param attributes.id			= attributes.name;
	param attributes.inline		= false;
	param attributes.look		= "";
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.title		= "";
	param attributes.tooltip		= "";
	
	
	
		     
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :


	for (variables.option in thisTag.arOption)	{
		
		if (attributes.id == "auto")	attributes.id = "auto_" & left(createUUID(), 10);
		variables.preClass = attributes.square ? "checkbox" : "radio";
		
		if(variables.option.look == "" && attributes.square)	variables.result &= '<div class="checkbox checkbox';
		else							variables.result &= '<div class="#variables.preClass#';
		
		if(variables.option.look    	!= "")    variables.result &= ' #variables.preClass#-#attributes.look#';
		if(variables.option.inline)			variables.result &= ' #variables.preClass#-inline';
		   							variables.result &= '"';
	
		if(variables.option.tooltip    != "")    variables.result &= ' tooltip="#attributes.tooltip#"';
									variables.result &= '>';
									
									
		
									variables.result &= '<input type="radio"';
		if(attributes.name		!= "")	variables.result &= ' name="#attributes.name#"';
		if(variables.option.id		!= "")	variables.result &= ' id="#attributes.id#"';
		if(variables.option.checked)			variables.result &= ' checked="checked"';
		if(variables.option.disabled)			variables.result &= ' disabled="disabled"';
									variables.result &= ' />';
									variables.result &= '<label';
		if(variables.option.id		!= "")	variables.result &=	' for="#attributes.id#"';
									variables.result &= '>';
	
		
									variables.result &= thisTag.GeneratedContent; // pass through of content
									variables.result &= '</label>';
									
									variables.result &= variables.crlf & '</div><!-- /.radio -->';
     
		} // end for						
     					

    
	


     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}

</cfscript>