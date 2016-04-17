<!---@ Description: Support for alert --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:alert."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();
  

	param attributes.look			= "warning";
	param attributes.processed 		= true;
	param attributes.rendered 		= true;
     
    
	
	if (!application.Bootstrap.validLook.contains(attributes.look))	throw "This is an invalid look option";
        
	if (!attributes.processed) exit "exitTag";
	
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
	break;
     
case "end" :

     
									variables.result &= '<div class="alert alert-#attributes.look.lcase().encodeForHTMLAttribute()#';
	if(attributes?.closable	== true)		variables.result &= ' alert-dismissible';  							
									variables.result &= '"';
	
									variables.result &= application.filterAttributes(attributes);
     
	
									variables.result &= '>';
	
	if(attributes?.closable	== true)		variables.result &= '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';		
	if(attributes?.title	!= "")    	variables.result &= '<strong>#attributes.title.encodeForHTML()#</strong>';
									variables.result &= variables.crlf;
	if(attributes?.title	!= "")    	variables.result &= '<br />';
	
	      
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);
	
	
									variables.result &= '</div><!-- /.alert -->';
									variables.result &= variables.crlf;
     
     if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);

     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>