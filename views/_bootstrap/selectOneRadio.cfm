<!--- This is a wrapper that matches Awesome Bootstrap Checkbox. But it can be updated to support anything --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectOneRadio.";



switch (thisTag.ExecutionMode)     {
case "start" :


	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();


	thisTag.qryOption 				= QueryNew("disabled,display,group,id,look,value,selected,tooltip,tooltipPosition");
	
	if(structKeyExists(attributes, "qryOption")) thisTag.qryOption = attributes.qryOption;

	param attributes.cacheid			= "";
	param attributes.disabled		= false;
	param attributes.inline			= false;
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.look			= "";
	param attributes.name;
	param attributes.key			= "";
	param attributes.placeholder		= [];
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	param attributes.square			= false;		// make it look like check
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	
	// Patch this
	if(attributes.disabled == "disabled")	attributes.disabled = true;
	
	
	if (!application.Bootstrap.validLook.contains(attributes.look))	throw "This is an invalid look option";

	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes.key & " " & attributes.cacheid;
	if (attributes.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	break;

case "end" :


	for(variables.myRow = 1; variables.myRow <= thisTag.qryOption.recordcount; variables.myRow++)	{
		
		variables.mylook = thisTag.qryOption.look[variables.myRow] == "" ? attributes.look : thisTag.qryOption.look[variables.myRow];	

		
		if(thisTag.qryOption.id[variables.myRow] == "auto")	QuerySetCell(thisTag.qryOption, "id", "auto_" & left(createUUID(), 10), variables.myRow);
		
		variables.preClass = attributes.square ? "checkbox" : "radio";
		
		if(variables.myLook == "" && attributes.square)			variables.result &= '<div class="checkbox checkbox';
		else												variables.result &= '<div class="#encodeForHTMLAttribute(variables.preClass)#';
		
		if(variables.myLook							!= "")	variables.result &= ' #variables.preClass#-#variables.myLook.lcase()#';
		if(attributes.inline)								variables.result &= ' #variables.preClass#-inline';
														variables.result &= '"';
	
		if(thisTag.qryOption.tooltip[variables.myRow]	!= "")	variables.result &= ' title="#encodeForHTMLAttribute(thisTag.qryOption.tooltip[variables.myRow])#"';
														variables.result &= '>';



														variables.result &= '<input type="radio"';
		if(attributes.name							!= "")	variables.result &= ' name="#encodeForHTMLAttribute(attributes.name)#"';
		if(thisTag.qryOption.id[variables.myRow]		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(thisTag.qryOption.id[variables.myRow])#"';
		if(thisTag.qryOption.selected[variables.myRow])			variables.result &= ' checked="checked"';
		if(attributes.disabled)								variables.result &= ' disabled="disabled"';
														variables.result &= ' value="#encodeForHTMLAttribute(thisTag.qryOption.value[variables.myRow])#"';	
														variables.result &= ' />';
														variables.result &= variables.crlf &'<label';
		if(thisTag.qryOption.id[variables.myRow]		!= "")	variables.result &=	' for="#encodeForHTMLAttribute(thisTag.qryOption.id[variables.myRow])#"';
														variables.result &= '>';
	
		
		if(!attributes.isSafeHTML)							variables.result &= getSafeHTML(thisTag.qryOption.display[variables.myRow].trim(), attributes.profile, attributes.throwOnError); // pass through of content
		if( attributes.isSafeHTML)							variables.result &= thisTag.qryOption.display[variables.myRow].trim(); // warning content must already be clean								

		
														variables.result &= '</label>';
									
														variables.result &= variables.crlf & '</div><!-- /.radio -->';
														variables.result &= variables.crlf;

		} // end for



	if (attributes.cacheid != "")			CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = "";
	if (attributes.rendered)				writeOutput(variables.result);

	break;
	}

</cfscript>