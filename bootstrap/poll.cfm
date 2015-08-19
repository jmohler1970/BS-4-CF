<!---@ Description: Support for poll --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:poll."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.action;			// required
	param attributes.id			= "auto";
	param attributes.interval	= 5000;		// ms
     param attributes.processed	= true;
     param attributes.rendered 	= true;
	param attributes.style		= "";
	param attributes.styleClass	= "";
	param attributes.timeout		= 5000;		// ms
	param attributes.tooltip		= "";
     
     if (attributes.id == "auto")	attributes.id = "poll_" & left(createUUID(), 10);


     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :
	
								variables.result &= variables.crlf;
	if(attributes.styleClass == "")	variables.result &= '<span';
	if(attributes.styleClass != "")	variables.result &= '<span class="#attributes.styleClass#"';							
				
		   							
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';
	if(attributes.tooltip    != "")	variables.result &=	' title="#attributes.tooltip#"';               
								variables.result &= '>';
							
								variables.result &= trim(thisTag.GeneratedContent); // pass through of content
	
								variables.result &= '</span>';
								variables.result &= variables.crlf;
								
	// Now do Javascript			
								variables.result &= variables.crlf & '<script type="text/javascript">';
								variables.result &= variables.crlf & '(function poll() {';						
								variables.result &= variables.crlf & '$.ajax({';
								variables.result &= variables.crlf & 'url : "' & attributes.action & '",';
								variables.result &= variables.crlf & 'type : "GET",';
								variables.result &= variables.crlf & 'success : function(data) {';
	//							variables.result &= variables.crlf & 'console.log("Polling");';
								variables.result &= variables.crlf & '$("##' & attributes.id & '").html(data);';
								variables.result &= variables.crlf & '},';
	//							variables.result &= variables.crlf & 'error : function(data) {';
	//							variables.result &= variables.crlf & 'console.log("Error");';
	//							variables.result &= variables.crlf & '},';
								variables.result &= variables.crlf & 'dataType : "html",';
								variables.result &= variables.crlf & 'complete : setTimeout(function() { poll()},' & attributes.interval & '),';
								variables.result &= variables.crlf & 'timeout  : ' & attributes.timeout;
								variables.result &= variables.crlf & '})';
								variables.result &= variables.crlf & '})();';
								
     
								variables.result &= variables.crlf & '</script>';
								
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
 </cfscript>