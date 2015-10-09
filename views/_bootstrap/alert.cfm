<!---@ Description: Support for alert --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:alert."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();
  
	param attributes.binding			= "";
	param attributes.cacheid			= "";
	param attributes.closable		= false;
	param attributes.id				= "";
	param attributes.isSafeHTML		= application.Bootstrap.isSafeHTML.contains("alert");
	param attributes.key			= "";
	param attributes.placeholder		= [];
	param attributes.look			= "warning";
	param attributes.processed 		= true;
	param attributes.profile			= application.Bootstrap.profile;
	param attributes.rendered 		= true;
	param attributes.throwOnError		= application.Bootstrap.throwOnError;
	param attributes.title			= "";
	param attributes.tooltip			= "";
	param attributes.tooltipPosition	= "bottom";
     
    
	
	if (!application.Bootstrap.validLook.contains(attributes.look))	throw "This is an invalid look option";
        
	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes.key & " " & attributes.cacheid;
	if (attributes.cacheid != "" && cacheidExists(variables.fullCacheid) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid));
							exit "exitTag";
							}
	break;
     
case "end" :
	if(attributes.binding 	!= "" && isDefined("caller.rc.#attributes.binding#")) 	thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");
	if(attributes.key 		!= "")		{
																	thisTag.GeneratedContent	= application.geti18n(attributes.key, attributes.placeholder);
																	attributes.isSafeHTML 	= true;				
																	}	

     
									variables.result &= '<div class="alert alert-#encodeForHTMLAttribute(attributes.look.lcase())#';
	if(attributes.closable)				variables.result &= ' alert-dismissible';  							
	   								variables.result &= '"';
	if(attributes.id		!= "")		variables.result &= ' id="#encodeForHTMLAttribute(attributes.id)#"';
	
	if(attributes.tooltip    != "")		variables.result &= ' title="#encodeForHTMLAttribute(attributes.tooltip)#"';
	if(attributes.tooltip	!= "")		variables.result &= ' data-placement="#encodeForHTMLAttribute(attributes.tooltipPosition)#"';
	if(attributes.tooltip	!= "")		variables.result &= ' data-toggle="tooltip"';
	
									variables.result &= '>';
	
	if(attributes.closable)				variables.result &= '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';		
	if(attributes.title		!= "")    	variables.result &= '<strong>#encodeForHTML(attributes.title)#</strong>';
									variables.result &= variables.crlf;
	if(attributes.title		!= "")    	variables.result &= '<br />';
	
	
	if(!attributes.isSafeHTML)			variables.result &= getSafeHTML(thisTag.GeneratedContent.trim(), attributes.profile, attributes.throwOnError); // pass through of content
	if( attributes.isSafeHTML)			variables.result &= thisTag.GeneratedContent.trim(); // warning content must already be clean								
	

									variables.result &= '</div><!-- /.alert -->';
									variables.result &= variables.crlf;
     
     if (attributes.cacheid != "")			CachePut(variables.fullCacheid, variables.result);

     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>