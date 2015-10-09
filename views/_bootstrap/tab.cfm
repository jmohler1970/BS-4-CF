<!---@ Description: Support for tab --->


<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:tab."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	thisTag.Parent = GetBaseTagData( "cf_tabView" );

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();
	
	variables.parentTag = lcase(ListGetAt(getBaseTagList(), 2));
	variables.validTag = ["cf_tabview"];
	
	if(!ArrayContains(variables.validTag, variables.parentTag ) )	{
		throw "This tag must be in #ArrayToList(variables.validTag)#. It appears to be #variables.parentTag#";
		}
  
	param attributes.cacheid			= "";
	param attributes.disabled		= false;
	param attributes.id;					// Tab must have id
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains("tab");
	param attributes.key			= "";
	param attributes.placeholder		= [];
	param attributes.processed		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered		= true;
	param attributes.role 			= "tab";
	param attributes.style			= "";
     param attributes.title			= "";
     param attributes.throwOnError		= application.Bootstrap.throwOnError;
     
	if (!structKeyExists(attributes, "data-url")) attributes["data-url"]	= "";
	
     
     if (!attributes.processed) exit "exitTag";
	if (!attributes.rendered) exit "exitTag";	// this is a known bug
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes.key & " " & attributes.cacheid;
	if (attributes.cacheid != "" && cacheidExists(variables.fullcacheid) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullcacheid));
							exit "exitTag";
							}
	
	break;
     
case "end" :
     
	variables.Data = {
		disabled	= attributes.disabled,
		id		= attributes.id,
		role		= attributes.Role,
		style	= attributes.style,
		title	= attributes.title,
		dataUrl	= attributes["data-url"],
		generatedContent = thisTag.generatedContent
		};
     
	
	thisTag.Parent.thisTag.arTab.append(variables.Data);


	if (attributes.cacheid != "")			CachePut(variables.fullCacheid, variables.result);
		
	thisTag.generatedContent = "";
	break;
	}
     
 
</cfscript>