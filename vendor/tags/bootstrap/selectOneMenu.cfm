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

	param attributes.array			= [];
	param attributes.fieldsize		= "";
	param attributes.help			= "";
	param attributes.isSafeHTML		= application?.Bootstrap?.isSafeHTML.contains(variables.tagStack[1].lcase());
	param attributes.list			= "";
	param attributes.name;					// required field
	param attributes.processed 		= true;
	param attributes.profile			= application?.Bootstrap?.profile;
	param attributes.rendered		= true;
	param attributes.span			= "";
	param attributes.styleClass		= "";
	param attributes.throwOnError		= application?.Bootstrap?.throwOnError;


	if(attributes?.list != "")			attributes.array.append(attributes.list.ListToArray(), true);
	

	if (!attributes.processed) exit "exitTag";

	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}

	break;

case "end" :



	if(attributes?.span			!= "")	variables.result &= '<div class="col-md-#attributes.span#">' & variables.crlf;
									variables.result &= '<select name="#encodeForHTMLAttribute(attributes.name)#" class="form-control';
	if(attributes?.styleClass	!= "")	variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';
	if(attributes?.fieldSize		!= "")	variables.result &= ' input-#attributes.fieldSize#';
									variables.result &= '"';
	
									variables.result &= application.filterAttributes(attributes);
													
	
									variables.result &= ' >';
								
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);
										

	// range genarator
	if(isnumeric(attributes?.from) && isnumeric(attributes?.to) && attributes.from < attributes.to)	{
		for (variables.i = attributes.from; variables.i <= attributes.to; variables.i++)	{
										variables.result &= variables.crlf & '<option value="#variables.i#"';
										if (attributes.selectedValue == variables.i) variables.result &= ' selected="selected"';
										variables.result &= '>' & variables.i & '</option>';
										}
									}
	// end range generator					
	// array and list generator
	if(!attributes.array.isEmpty())		{
		for (variables.i in attributes.array)	{
										variables.result &= variables.crlf & '<option value="#variables.i#"';
										if (attributes.selectedValue == variables.i) variables.result &= ' selected="selected"';
										variables.result &= '>' & variables.i & '</option>';
										}
										
									}


	for(variables.myRow = 1; variables.myRow <= thisTag.qryOption.recordcount; variables.myRow++)	{							
									variables.result &= '<option';
									variables.result &= ' value="#thisTag.qryOption.value[variables.myRow]#"';
		if(thisTag.qryOption.selected[variables.myRow] == true || thisTag.qryOption.value[variables.myRow] == attributes?.selectedValue)	variables.result &= ' selected="selected"';
									variables.result &= ' >';
									variables.result &= thisTag.qryOption.display[variables.myRow];
									variables.result &= '</option>';
		} // end for						
    
    
						

		
	
									variables.result &= variables.crlf & '</select>';
	if (attributes?.help		!= "")	variables.result &= variables.crlf & '<span class="help-block">#encodeForHTML(attributes.help)#</span>';						
     if (attributes?.span		!= "")	variables.result &= variables.crlf & '</div><!-- /.col-md-#attributes.span# -->';
	
	
	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}

</cfscript>