<!---@ Description: Support for b:outputScript --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:outputScript."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.library		= "default";
	param attributes.name		= "";		// if name is blank, the library better have complete target
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.type		= "application/javascript";
     
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     							variables.result &= crlf;
	   							variables.result &= '<script ';
	   							variables.result &= ' src="' & application.Bootstrap.ScriptLibrary[attributes.library] & attributes.name & '"';
								variables.result &= ' type="#encodeForHTMLAttribute(attributes.type)#"';              
								variables.result &= '>';
								
								variables.result &= thisTag.GeneratedContent.trim();
								
								variables.result &= '</script>';

     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>