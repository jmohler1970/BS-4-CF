<!--- This is a wrapper for select with multiple. --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectMenuMenu"; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
	
	thisTag.qryOption 			= QueryNew("disabled,display,group,id,look,value,selected,tooltip,tooltipPosition");
  
	if(attributes.keyExists("qryOption")) thisTag.qryOption = attributes.qryOption;
  
	param attributes.disabled		= false;
	param attributes.fieldSize		= "";
	param attributes.help			= "";
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains("selectManyMenu");
	param attributes.name;					// required field
	param attributes.onBlur			= "";
	param attributes.onClick			= "";
	param attributes.onChange		= "";
	//param attributes.key			= "";
	//param attributes.placeholder		= [];
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.readonly	 	= false;
	param attributes.rendered	 	= true;
	param attributes.required		= false;
	param attributes.span			= "";
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";
	
	// Patch this
	if(attributes.disabled == "disabled")	attributes.disabled = true;
	
	
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
	

	if(attributes.span		!= "")	variables.result &= '<div class="col-md-#attributes.span#">' & variables.crlf;
								variables.result &= '<select multiple="multiple" class="form-control';
	if(attributes.styleClass	!= "")	variables.result &= ' #encodeforHTMLAttribute(attributes.styleClass)#';
	if(attributes.fieldSize	!= "")	variables.result &= ' input-#encodeForHTMLAttribute(attributes.fieldSize)#';
								variables.result &= '"';
	if(attributes.disabled)			variables.result &= ' disabled="disabled"';													
	if(attributes.id		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.readonly)			variables.result &= ' readonly="readonly"';
	if(attributes.required)			variables.result &= ' required="required"';
	if(attributes.style		!= "")	variables.result &= ' style="#encodeForCSS(attributes.style)#"';
	
	if(attributes.tooltip    != "")	variables.result &=	' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")	variables.result &= ' data-toggle="tooltip"';
	
	if(attributes.onBlur	!= "")	variables.result &= ' onBlur="#attributes.onBlur#"';
	if(attributes.onClick	!= "")	variables.result &= ' onClick="#attributes.onClick#"';
	if(attributes.onChange	!= "")	variables.result &= ' onChange="#attributes.onChange#"';
	
								variables.result &= ' >';

	for(variables.myRow = 1; variables.myRow <= thisTag.qryOption.recordcount; variables.myRow++)	{							
								variables.result &= '<option';
								variables.result &= ' value="#thisTag.qryOption.value[variables.myRow]#"';
		if(thisTag.qryOption.selected[variables.myRow])	variables.result &= ' selected="selected"';
								variables.result &= ' >';
								variables.result &= thisTag.qryOption.display[variables.myRow];
								variables.result &= '</option>';
		} // end for						
     					
	
								variables.result &= '</select>';
	if(attributes.help		!= "")	variables.result &= '<span class="help-block">#encodeForHTML(attributes.help)#</span>';						
     if(attributes.span		!= "")	variables.result &= variables.crlf & '</div><!-- /.col-md-#encodeForHTMLAttribute(attributes.span)# -->';

     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}

</cfscript>