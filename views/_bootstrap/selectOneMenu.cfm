<!--- This is a wrapper for select. --->
<!--- This is inspired by cfselect, but don't hold that against me --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectOneMenu"; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();
	
	
	thisTag.qryOption 			= QueryNew("disabled,display,group,id,look,value,selected,tooltip,tooltipPosition");
	
	if(structKeyExists(attributes, "qryOption")) thisTag.qryOption = attributes.qryOption;
  
	param attributes.cacheid			= "";
	param attributes.disabled		= false;
	param attributes.fieldSize		= "";
	param attributes.help			= "";
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.name;					// required field
	param attributes.key			= "";
	param attributes.placeholder		= [];
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.readonly 		= false;
	param attributes.rendered 		= true;
	param attributes.required		= false;
	param attributes.span			= "";	// md only. If you want finer control, use b:column
	param attributes.selectedValue	= "";	// value of selected item
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";

	// Patch this
	if(attributes.disabled == "disabled")	attributes.disabled = true;
	if(attributes.readonly == "readonly")	attributes.readonly = true;
	if(attributes.required == "required")	attributes.required = true;
		
	
	// We will be passing through HTML5 data-, Mouse Events, and Angular JS
	variables.arAttrSeries = [];
	
	for(variables.myKey in attributes)	{
		if (left(variables.myKey, 5) == "data-" || left(variables.myKey, 2) == "on" || left(variables.myKey, 3) == "ng-")	{
			ArrayAppend(arAttrSeries, {key = variables.myKey, value = attributes[variables.myKey] });
			} // end if	
		}	// end for
		
	

     if (!attributes.processed) exit "exitTag";
     
	variables.fullCacheid = variables.tagStack[1] & " " & attributes.key & " " & attributes.cacheid;
	if (attributes.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
     
	break;
     
case "end" :

	if(attributes.key 		!= "" )		{
																	thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes.placeholder);
																	attributes.isSafeHTML 	= true;				
																	}	
	

	if(attributes.span		!= "")		variables.result &= '<div class="col-md-#attributes.span#">' & variables.crlf;
									variables.result &= '<select name="#encodeForHTMLAttribute(attributes.name)#" class="form-control';
	if(attributes.styleClass	!= "")		variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';
	if(attributes.fieldSize	!= "")		variables.result &= ' input-#attributes.fieldSize#';
									variables.result &= '"';
	if(attributes.disabled)				variables.result &= ' disabled="disabled"';													
	if(attributes.id		!= "")		variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	
	for(variables.myAttr in variables.arAttrSeries)	variables.result &= ' #lcase(variables.myAttr.key)#="#encodeForHTMLAttributes(variables.myAttr.value)#"';
	
	if (attributes.readonly)				variables.result &= ' readonly="readonly"';
	if (attributes.required)				variables.result &= ' required="required"';
	if (attributes.style	!= "")		variables.result &= ' style="#encodeForCSS(attributes.style)#"';
	if (attributes.tooltip   != "")		variables.result &=	' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if (attributes.tooltip	!= "")		variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if (attributes.tooltip	!= "")		variables.result &= ' data-toggle="tooltip"';

	
									variables.result &= ' >';
								
	for(variables.myRow = 1; variables.myRow <= thisTag.qryOption.recordcount; variables.myRow++)	{							
									variables.result &= '<option';
									variables.result &= ' value="#thisTag.qryOption.value[variables.myRow]#"';
		if(thisTag.qryOption.selected[variables.myRow] || thisTag.qryOption.value[variables.myRow] == attributes.selectedValue)	variables.result &= ' selected="selected"';
									variables.result &= ' >';
									variables.result &= thisTag.qryOption.display[variables.myRow];
									variables.result &= '</option>';
		} // end for						
    
    
    	if(!attributes.isSafeHTML)			variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)			variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								

		
	
									variables.result &= variables.crlf & '</select>';
	if (attributes.help		!= "")		variables.result &= variables.crlf & '<span class="help-block">#encodeForHTML(attributes.help)#</span>';						
     if (attributes.span		!= "")		variables.result &= variables.crlf & '</div><!-- /.col-md-#attributes.span# -->';
	
	
	if (attributes.cacheid != "")			CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}

</cfscript>