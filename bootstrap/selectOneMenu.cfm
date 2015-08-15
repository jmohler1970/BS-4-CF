<!--- This is a wrapper for select. --->
<!--- This is inspired by cfselect, but don't hold that against me --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectOneMenu"; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :


	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
	
	thisTag.arOption 			= [];
  
	param attributes.disabled	= false;
	param attributes.fieldSize	= "";
	param attributes.help		= "";
	param attributes.id			= "";
	param attributes.name;				// required field
	param attributes.onBlur		= "";
	param attributes.onClick		= "";
	param attributes.onChange	= "";
	param attributes.processed 	= true;
	param attributes.readonly 	= false;
	param attributes.rendered 	= true;
	param attributes.required	= false;
	param attributes.span		= "";	// md only. If you want finer control, use b:column
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.tooltip		= "";


     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
	

	if(attributes.span		!= "")	variables.result &= '<div class="col-md-#attributes.span#">' & variables.crlf;
								variables.result &= '<select class="form-control';
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';
	if(attributes.fieldSize	!= "")	variables.result &= ' input-#attributes.fieldSize#';
								variables.result &= '"';
	if(attributes.disabled)			variables.result &= ' disabled="disabled"';													
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.readonly)			variables.result &= ' readonly="readonly"';
	if(attributes.required)			variables.result &= ' required="required"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';
	if(attributes.tooltip    != "")	variables.result &=	' title="#attributes.tooltip#"';
	if(attributes.onBlur	!= "")	variables.result &= ' onBlur="#attributes.onBlur#"';
	if(attributes.onClick	!= "")	variables.result &= ' onClick="#attributes.onClick#"';
	if(attributes.onChange	!= "")	variables.result &= ' onChange="#attributes.onChange#"';
	
								variables.result &= ' >';
								
	for (variables.option in thisTag.arOption)	{	
								variables.result &= '<option';
								variables.result &= ' value="#variables.option.value#"';
		if(variables.option.selected)	variables.result &= ' selected="selected"';
								variables.result &= ' >';
								variables.result &= variables.option.display;
								variables.result &= '</option>';
		} // end for						
     							

								variables.result &= thisTag.GeneratedContent; // pass through of content
	
								variables.result &= variables.crlf & '</select>';
	if(attributes.help		!= "")	variables.result &= variables.crlf & '<span class="help-block">#attributes.help#</span>';						
     if(attributes.span		!= "")	variables.result &= variables.crlf & '</div><!-- /.col-md-#attributes.span# -->';
	

     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}

</cfscript>