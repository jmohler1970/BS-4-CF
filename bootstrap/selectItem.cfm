<!--- This is a wrapper item. Generates a single option. See selectItems for multiple --->



<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:selectItem."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	
	param attributes.id			= "";
	param attributes.display		= "";
	param attributes.value		= attributes.display; 
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.selected	= false;


     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :     
	

	
								variables.result &= '<option';
								variables.result &= ' value="#attributes.value#"';
	if(attributes.id		!= "")	variables.result &= ' id="#attributes.id#"';
	if(attributes.selected)			variables.result &= ' selected="selected"';
								variables.result &= ' >';
								variables.result &= attributes.display;
								variables.result &= '</option>';

     

     thisTag.GeneratedContent = "";
     if (attributes.rendered)			writeOutput(variables.result);
     
	break;
	}

</cfscript>