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
	param attributes.processed 		= true;
	param attributes.rendered 		= true;
	param attributes.size			= "";
     param attributes.styleClass		= "";
	param attributes.title			= "";
	
	
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     
     
	   							variables.result &= variables.crlf & '<div class="modal fade';
	if(attributes.styleClass != "")	variables.result &= ' #attributes.styleClass#"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.backdrop	!= true)	variables.result &= ' data-backdrop="#attributes.backdrop#"';
	if(!attributes["close-on-escape"])	variables.result &= ' data-keyboard="false"';
	
	
	   							variables.result &= '>';

	   							variables.result &= variables.crlf & '<div class="modal-dialog">';
	   							variables.result &= variables.crlf & '<div class="modal-content">';
	   							variables.result &= variables.crlf & '<div class="modal-header">';
	if(attributes.closable)			variables.result &= variables.crlf & '<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>';   													variables.result &= '<h4 class="modal-title">#attributes.title#</h4>';
								variables.result &= variables.crlf & '</div><!-- /.modal-header -->';

								variables.result &= variables.crlf & '<div class="modal-body">';
								variables.result &= thisTag.GeneratedContent; // pass through of content
								variables.result &= variables.crlf & '</div><!-- /.modal-body -->';	

								variables.result &= variables.crlf & '<div class="modal-footer">';
								variables.result &= variables.crlf & '<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>';
								variables.result &= variables.crlf & '<button type="button" class="btn btn-primary">Save changes</button>';
								variables.result &= variables.crlf & '</div><!-- /.modal-footer -->';
								variables.result &= variables.crlf & '</div><!-- /.modal-content -->';
								variables.result &= variables.crlf & '</div><!-- /.modal-dialog -->';
								variables.result &= variables.crlf & '</div><!-- /.modal -->';
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>