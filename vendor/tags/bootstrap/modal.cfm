<!---@ Description: Support for modal --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:modal."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
  
	param attributes.backdrop		= true;
	param attributes.closable		= true;
	if(!structKeyExists(attributes, "close-on-escape")) attributes["close-on-escape"] = true;
	param attributes.processed 		= true;
	param attributes.rendered 		= true;
	param attributes.styleClass		= "";
	param attributes.submitValue		= "Save Changes";
	
	
	
     if (!attributes.processed) exit "exitTag";

	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}

	break;

case "end" :

     
									variables.result &= variables.crlf & '<div class="modal fade';
	if(attributes?.styleClass != "")		variables.result &= ' #attributes.styleClass.encodeForHTMLAttribute()#';
									variables.result &= '"';
	if(attributes?.id		!= "")		variables.result &= ' id="#attributes.id.encodeForHTMLAttribute()#"';
	if(!attributes.backdrop)				variables.result &= ' data-backdrop="#attributes.backdrop.encodeForHTMLAttribute()#"';
	if(!attributes["close-on-escape"])		variables.result &= ' data-keyboard="false"';
	
	
	   								variables.result &= '>';

	   								variables.result &= variables.crlf & '<div class="modal-dialog">';
	   								variables.result &= variables.crlf & '<div class="modal-content">';
	   								variables.result &= variables.crlf & '<div class="modal-header">';
	
	if(attributes.closable)				{
									variables.result &= variables.crlf & '<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
									variables.result &= '<h4 class="modal-title">#encodeForHTML(attributes?.title)#</h4>';
									}
									
									variables.result &= variables.crlf & '</div><!-- /.modal-header -->';

									variables.result &= variables.crlf & '<div class="modal-body">';
								
								
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);	
							
								
									variables.result &= variables.crlf & '</div><!-- /.modal-body -->';	

									variables.result &= variables.crlf & '<div class="modal-footer">';
									variables.result &= variables.crlf & '<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>';
	if(attributes?.showSubmit == true)		variables.result &= variables.crlf & '<button type="submit" class="btn btn-primary">#encodeForHTML(attributes.submitValue)#</button>';
									variables.result &= variables.crlf & '</div><!-- /.modal-footer -->';
									variables.result &= variables.crlf & '</div><!-- /.modal-content -->';
									variables.result &= variables.crlf & '</div><!-- /.modal-dialog -->';
									variables.result &= variables.crlf & '</div><!-- /.modal -->';
								
	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);							
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>