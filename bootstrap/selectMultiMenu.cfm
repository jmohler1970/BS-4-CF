<!--- This is a wrapper for select with multiple. --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectMenuMenu"; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
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
	param attributes.span		= "";
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.tooltip		= "";


     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
	

	if(attributes.span		!= "")	variables.result &= '<div class="col-md-#attributes.span#">' & variables.crlf;
								variables.result &= '<select multiple="multiple" class="form-control';
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

								variables.result &= thisTag.GeneratedContent; // pass through of content
	
								variables.result &= '</select>';
	if(attributes.help		!= "")	variables.result &= '<span class="help-block">#attributes.help#</span>';						
     if(attributes.span		!= "")	variables.result &= variables.crlf & '</div><!-- /.col-md-#attributes.span# -->';

     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}

</cfscript>