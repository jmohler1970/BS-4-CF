<!---@ Description: Support for button. If you want to submit, use commandButton instead --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:button."; 
	
	

switch (thisTag.ExecutionMode)	{
case "start" :

	variables.result 	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();

	param attributes.iconAlign		= "left";
	param attributes.library			= "default";	// for icon
	param attributes.look			= "default";
	param attributes.processed 		= true;
	param attributes.rendered 		= true;
	param attributes.role			= "button";
	


	if (!application.Bootstrap.validLook.contains(attributes.look))	throw "This is an invalid look option";


	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	
	break;

case "end" :

	if( attributes?.value 	!= "")										thisTag.generatedContent = attributes.value;
     if( attributes?.binding 	!= "" && isDefined("caller.rc.#attributes.binding#")) 	thisTag.generatedContent = evaluate("caller.rc.#attributes.binding#");
     


									variables.result &= '<button type="button" class="btn btn-#attributes.look.lcase().encodeForHTMLAttribute()#';
	if( attributes?.outline		== true)	variables.result &= "-outline";
	if( attributes?.size		!= "")	variables.result &= ' btn-#attributes.size.encodeForHTMLAttribute()#';
	if( attributes?.styleClass	!= "")	variables.result &= ' #attributes.styleClass.encodeForHTMLAttribute()#';
									variables.result &= '"';
	// end class specification
	

									variables.result &= application.filterAttributes(attributes);
		
									variables.result &= '>';
								
	// space on end is not an accident							
	if( attributes?.icon 	!= "" && attributes.iconAlign == "left")	{
									variables.result &= '<i class="#application.Bootstrap.IconLibrary[attributes.library]##attributes.icon.encodeForHTMLAttribute()#"></i> ';
											}		


									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);


	
	// space at start is not an accident
	if( attributes?.icon 		!= "" && attributes.iconAlign == "right")	{
									variables.result &= ' <i class="#application?.Bootstrap?.IconLibrary[attributes.library]##attributes.icon.encodeForHTMLAttribute()#"></i>';
									}		


									variables.result &= '</button>';

	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

	thisTag.GeneratedContent = "";
	if (attributes.rendered)				writeOutput(variables.result);

	break;
	}


</cfscript>