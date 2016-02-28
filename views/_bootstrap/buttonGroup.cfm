<!---@ Description: Support for buttonGroup --->
<!---@ Note: If data toggle is true, then this tag supports selectItem, and selectItems --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:buttonGroup."; 



switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
	
	thisTag.qryOption 				= QueryNew("disabled,display,group,id,look,value,selected,tooltip,tooltipPosition");

	param attributes.look 			= ""; // needed 
	param attributes.isSafeHTML		= application?.Bootstrap?.isSafeHTML.contains(variables.tagStack[1].lcase()); // really does not work with true
	param attributes.orientation 		= "horizontal"; // horizontal, vertical, up
	param attributes.processed 		= true;
	param attributes.profile			= application?.Bootstrap?.profile;
	param attributes.rendered		= true;
	param attributes.throwOnError		= application?.Bootstrap?.throwOnError;
	param attributes.toggle			= false;
	param attributes.tooltipPosition	= "bottom";



	if (!attributes.processed) exit "exitTag";
	
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	
	break;

case "end" :

	if(attributes.orientation == "horizontal")	variables.result &= '<div class="btn-group';
	if(attributes.orientation == "vertical")	variables.result &= '<div class="btn-group-vertical';
	if(attributes.orientation == "up")			variables.result &= '<div class="btn-group dropup';
	

	if(attributes?.size		!= "")			variables.result &= ' btn-group-#encodeForHTMLAttribute(attributes.size)#';
	if(attributes?.justified == true)			variables.result &= ' btn-group-justified';
	if(attributes?.pull		!= "")			variables.result &= ' pull-#encodeForHTMLAttribute(attributes.pull)#';
										variables.result &= '"';
	if(attributes?.id		!= "")			variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes?.tooltip	!= "")			variables.result &=	' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes?.toggle	== true)			variables.result &= ' data-toggle="buttons"';
										variables.result &= ' role="group">';


	for(variables.myRow = 1; variables.myRow <= thisTag.qryOption.recordcount; variables.myRow++)	{							

		variables.mylook = thisTag.qryOption.look[variables.myRow] == "" ? attributes.look : thisTag.qryOption.look[variables.myRow];		

		if(thisTag.qryOption.id[variables.myRow] == "auto")	QuerySetCell(thisTag.qryOption, "id", "auto_" & left(createUUID(), 10), variables.myRow);
			
														variables.result &= '<label class="btn btn-#encodeForHTMLAttribute(variables.myLook.lcase())# ';
		
		if(thisTag.qryOption.selected[variables.myRow] == true)	variables.result &= ' active';
														variables.result &= '"';
	
		if(thisTag.qryOption.tooltip[variables.myRow] != "")		variables.result &= ' title="#encodeForHTML(thisTag.qryOption.tooltip[variables.myRow])#"';
														variables.result &= '>';



														variables.result &= '<input type="radio"';
		if(attributes?.name					 != "")			variables.result &= ' name="#encodeForHTML(attributes.name)#"';
		if(thisTag.qryOption.id[variables.myRow] != "")			variables.result &= ' id="#encodeForHTML(thisTag.qryOption.id[variables.myRow])#"';
		if(thisTag.qryOption.selected[variables.myRow] == true)	variables.result &= ' checked="checked"';
														variables.result &= ' value="#encodeForHTML(thisTag.qryOption.value[variables.myRow])#"';	
														variables.result &= ' />';
		
														variables.result &= thisTag.qryOption.display[variables.myRow]; // pass through of content
														variables.result &= '</label>';
												
														variables.result &= variables.crlf & '</label><!-- /.radio -->';

		} // end for
								
		
	if(!attributes.isSafeHTML)				variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)				variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								


										variables.result &= '</div><!-- /.btn-group -->';
										variables.result &= variables.crlf;
								
	if (attributes?.cacheid != "")			CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);							


	thisTag.GeneratedContent = "";
	if (attributes.rendered)					writeOutput(variables.result);

	break;
	}
</cfscript>