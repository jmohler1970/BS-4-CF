<!---@ Description: Support for tr --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:tr."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.id			= "";
	param attributes.look		= "";
	param attributes.processed	= true;
	param attributes.rendered 	= true;
	param attributes.style		= "";
	param attributes.styleClass	= "";
	
	if(!ArrayContains(['','active','success','info','warning','danger'],attributes.look)) throw "tr tag has invalid contextual class option";
	
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
          
	   							variables.result &= variables.crlf & '<tr class="';
	if(attributes.look		!= "")	variables.result &= ' #attributes.look#';
	if(attributes.styleClass	!= "")	variables.result &= ' #attributes.styleClass#';		
	   							variables.result &= '"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.style		!= "")	variables.result &= ' style="#attributes.style#"';                 
								variables.result &= '>';
								variables.result &= thisTag.GeneratedContent; // pass through of content
								variables.result &= '</tr>';
     
     
     thisTag.GeneratedContent = "";
	if (attributes.rendered)			 writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>