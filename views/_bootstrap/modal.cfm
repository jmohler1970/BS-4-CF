<!---@ Description: Support for modal --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:modal."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.backdrop		= true;
	param attributes.closable		= true;
	if(!structKeyExists(attributes, "close-on-escape")) attributes["close-on-escape"] = true;
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains("modal");
	param attributes.key			= "";
	param attributes.placeholder		= [];
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	param attributes.size			= "";
     param attributes.styleClass		= "";
     param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.title			= "";
	param attributes.showSubmit		= false;
	param attributes.submitValue		= "Save Changes";
	
	
	
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     

	if(attributes.key 		!= "" )		{
																	thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes.placeholder);
																	attributes.isSafeHTML 	= true;				
																	}	
     
	   							variables.result &= variables.crlf & '<div class="modal fade';
	if(attributes.styleClass != "")	variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';
								variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	if(attributes.backdrop	!= true)	variables.result &= ' data-backdrop="#encodeForHTMLAttribute(attributes.backdrop)#"';
	if(!attributes["close-on-escape"])	variables.result &= ' data-keyboard="false"';
	
	
	   							variables.result &= '>';

	   							variables.result &= variables.crlf & '<div class="modal-dialog">';
	   							variables.result &= variables.crlf & '<div class="modal-content">';
	   							variables.result &= variables.crlf & '<div class="modal-header">';
	if(attributes.closable)			variables.result &= variables.crlf & '<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>';   													variables.result &= '<h4 class="modal-title">#encodeForHTML(attributes.title)#</h4>';
								variables.result &= variables.crlf & '</div><!-- /.modal-header -->';

								variables.result &= variables.crlf & '<div class="modal-body">';
								
	if(!attributes.isSafeHTML)		variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)		variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								
							
								
								variables.result &= variables.crlf & '</div><!-- /.modal-body -->';	

								variables.result &= variables.crlf & '<div class="modal-footer">';
								variables.result &= variables.crlf & '<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>';
	if(attributes.showSubmit)		variables.result &= variables.crlf & '<button type="submit" class="btn btn-primary">#encodeForHTML(attributes.submitValue)#</button>';
								variables.result &= variables.crlf & '</div><!-- /.modal-footer -->';
								variables.result &= variables.crlf & '</div><!-- /.modal-content -->';
								variables.result &= variables.crlf & '</div><!-- /.modal-dialog -->';
								variables.result &= variables.crlf & '</div><!-- /.modal -->';
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>