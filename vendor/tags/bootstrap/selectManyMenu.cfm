<!--- This is a wrapper for select with multiple. --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectMenuMenu"; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();
	
	thisTag.qryOption 			= QueryNew("disabled,display,group,id,look,value,selected,tooltip,tooltipPosition");
  
	if(attributes.keyExists("qryOption")) thisTag.qryOption = attributes.qryOption;
  

	param attributes.name;					// required field
	param attributes.processed 		= true;
	param attributes.rendered	 	= true;

	

	
     if (!attributes.processed) exit "exitTag";
     
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
     
	break;
     
case "end" :     
	

	if (attributes?.span		!= "")	variables.result &= '<div class="col-md-#attributes.span#">' & variables.crlf;
									variables.result &= '<select multiple="multiple" class="form-control';
	if (attributes?.styleClass	!= "")	variables.result &= ' #encodeforHTMLAttribute(attributes.styleClass)#';
	if (attributes?.fieldSize	!= "")	variables.result &= ' input-#encodeForHTMLAttribute(attributes.fieldSize)#';
									variables.result &= '"';
	
									variables.result &= application.filterAttributes(attributes);
	
									variables.result &= ' >';

	for(variables.myRow = 1; variables.myRow <= thisTag.qryOption.recordcount; variables.myRow++)	{							
									variables.result &= '<option';
									variables.result &= ' value="#thisTag.qryOption.value[variables.myRow]#"';
		if(thisTag.qryOption.selected[variables.myRow] == true)	variables.result &= ' selected="selected"';
									variables.result &= ' >';
									variables.result &= thisTag.qryOption.display[variables.myRow];
									variables.result &= '</option>';
		} // end for						
     					
	
									variables.result &= '</select>';
	if (attributes?.help		!= "")	variables.result &= '<span class="help-block">#encodeForHTML(attributes.help)#</span>';						
     if (attributes?.span		!= "")	variables.result &= variables.crlf & '</div><!-- /.col-md-#encodeForHTMLAttribute(attributes.span)# -->';
     
     if (attributes?.cacheid 		!= "")	CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}

</cfscript>