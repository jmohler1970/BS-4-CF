<!--- This is a wrapper that matches Awesome Bootstrap Checkbox. But it can be updated to support anything --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectOneRadio.";



switch (thisTag.ExecutionMode)     {
case "start" :



	variables.result = "";
	variables.crlf =  chr(13) & chr(10);

	thisTag.qryOption 				= QueryNew("disabled,display,group,id,look,value,selected,tooltip");

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


	for(variables.myRow = 1; variables.myRow <= thisTag.qryOption.recordcount; variables.myRow++)	{

		
		if(thisTag.qryOption.id[variables.myRow] == "auto")	QuerySetCell(thisTag.qryOption, "id", "auto_" & left(createUUID(), 10), variables.myRow);
		
		variables.preClass = attributes.square ? "checkbox" : "radio";
		
		if(thisTag.qryOption.look[variables.myRow] == "" && attributes.square)	variables.result &= '<div class="checkbox checkbox';
		else												variables.result &= '<div class="#variables.preClass#';
		
		if(thisTag.qryOption.look[variables.myRow]		!= "")	variables.result &= ' #variables.preClass#-#thisTag.qryOption.look[variables.myRow]#';
		if(attributes.inline)								variables.result &= ' #variables.preClass#-inline';
														variables.result &= '"';
	
		if(thisTag.qryOption.tooltip[variables.myRow]	!= "")	variables.result &= ' tooltip="#thisTag.qryOption.tooltip[variables.myRow]#"';
														variables.result &= '>';



														variables.result &= '<input type="radio"';
		if(attributes.name							!= "")	variables.result &= ' name="#attributes.name#"';
		if(thisTag.qryOption.id[variables.myRow]		!= "")	variables.result &= ' id="#thisTag.qryOption.id[variables.myRow]#"';
		if(thisTag.qryOption.selected[variables.myRow])			variables.result &= ' checked="checked"';
		if(attributes.disabled)								variables.result &= ' disabled="disabled"';
														variables.result &= ' value="#thisTag.qryOption.value[variables.myRow]#"';	
														variables.result &= ' />';
														variables.result &= variables.crlf &'<label';
		if(thisTag.qryOption.id[variables.myRow]		!= "")	variables.result &=	' for="#thisTag.qryOption.id[variables.myRow]#"';
														variables.result &= '>';
	
		
														variables.result &= thisTag.qryOption.display[variables.myRow]; // pass through of content
														variables.result &= '</label>';
									
														variables.result &= variables.crlf & '</div><!-- /.radio -->';

		} // end for





	thisTag.GeneratedContent = "";
	if (attributes.rendered)			writeOutput(variables.result);

	break;
	}

</cfscript>