<!---@ Description: Support for outputStylesheet --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:outputStylesheet."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
	
	
	variables.parentTag = getBaseTagList().listGetAt(2).lcase();
	variables.validTag = ["cf_head"];
	
	if(!variables.validTag.contains(variables.parentTag) )	{
		throw "This tag must be in #variables.validTag.toList()#. It appears to be #variables.parentTag#";
		}
  
	param attributes.library		= "default";
	param attributes.media		= "";
	param attributes.name		= "";
	param attributes.processed 	= true;
	param attributes.rel 		= "stylesheet";
	param attributes.rendered 	= true;
	param attributes.type		= "text/css";
     
	if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
     							variables.result &= crlf;
	   							variables.result &= '<link type="#attributes.type#"';
	   							variables.result &= ' href="' & application.Bootstrap.StylesheetLibrary[attributes.library] & attributes.name & '"';
	if(attributes.media		!= "")	variables.result &= ' media="#attributes.media#"';
								variables.result &= ' rel="#attributes.rel#"';              
								variables.result &= '>';
								
								variables.result &= thisTag.GeneratedContent.trim();
								
								variables.result &= '</link>';

     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>