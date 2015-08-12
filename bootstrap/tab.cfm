<!---@ Description: Support for tab --->


<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:tab."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	thisTag.Parent = GetBaseTagData( "cf_tabView" );

	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.disabled	= false;
	param attributes.id			= "";
	param attributes.role 		= "tab";
	param attributes.style		= "";
     param attributes.title		= "";
     
     if (!attributes.processed) exit "exitTag";
	break;
     
case "end" :
     
	variables.Data = {
		disabled	= attributes.disabled,
		id		= attributes.id, 
		role		= attributes.Role, 
		style	= attributes.style,
		title	= attributes.title, 
		generatedContent = thisTag.generatedContent
		};
     
     ArrayAppend(thisTag.Parent.thisTag.arTab, 			variables.Data);

	
		
	thisTag.generatedContent = "";
	break;
	}
     
 
</cfscript>