<!--- This is a wrapper that matches Awesome Bootstrap Checkbox. But it can be updated to support anything --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectOneRadio."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :



	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
	
	thisTag.arOption 				= [];
  
	param attributes.disabled		= false;
	param attributes.inline			= false;
	param attributes.name;
	param attributes.processed 		= true;
	param attributes.rendered 		= true;
	param attributes.square			= false;		// make it look like check
	
	// Patch this
	if(attributes.disabled == "disabled")	attributes.disabled = true;
			     
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :


	for (variables.option in thisTag.arOption)	{
		
		if (variables.option.id == "auto")	variables.option.id = "auto_" & left(createUUID(), 10);
		
		variables.preClass = attributes.square ? "checkbox" : "radio";
		
		if(variables.option.look == "" && attributes.square)	variables.result &= '<div class="checkbox checkbox';
		else							variables.result &= '<div class="#variables.preClass#';
		
		if(variables.option.look    	!= "")    variables.result &= ' #variables.preClass#-#variables.option.look#';
		if(attributes.inline)			variables.result &= ' #variables.preClass#-inline';
		   							variables.result &= '"';
	
		if(variables.option.tooltip    != "")    variables.result &= ' tooltip="#attributes.tooltip#"';
									variables.result &= '>';
									
									
		
									variables.result &= '<input type="radio"';
		if(attributes.name		!= "")	variables.result &= ' name="#attributes.name#"';
		if(variables.option.id		!= "")	variables.result &= ' id="#variables.option.id#"';
		if(variables.option.selected)
									variables.result &= ' checked="checked"';
		if(attributes.disabled)			variables.result &= ' disabled="disabled"';
									variables.result &= ' value="#variables.option.value#"';	
									variables.result &= ' />';
									variables.result &= variables.crlf &'<label';
		if(variables.option.id		!= "")	variables.result &=	' for="#variables.option.id#"';
									variables.result &= '>';
	
		
									variables.result &= variables.option.display; // pass through of content
									variables.result &= '</label>';
									
									variables.result &= variables.crlf & '</div><!-- /.radio -->';
     
		} // end for						
     					

    
	


     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}

</cfscript>