<!---@ Description: Support for progressbar --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:progressBar."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();
  

     param attributes.processed		= true;
	param attributes.rendered 		= true;
	param attributes.role 			= "progressbar";
	param attributes.stripped		= false;	if(attributes?.animated == true) attributes.stripped = true;

     param attributes.width			= 0;
     
     
     
     if (attributes.keyExists("text")) 						throw "attributes.text is an invalid option. Don't even think of using it!";
     
     if (!attributes.processed) exit "exitTag";
     
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
     
	break;
     
case "end" :
	

     if(attributes?.binding	!= "" && isDefined("caller.rc.#attributes.binding#")) thisTag.GeneratedContent = evaluate("caller.rc.#attributes.binding#");

	
	
											variables.result &= '<div class="progress">';
											variables.result &= variables.crlf & '<div class="progress-bar';
	if(attributes?.look			!= "")			variables.result &= ' progress-bar-#encodeForHTMLAttribute(attributes.look.lcase())#';
	if(attributes?.stripped		== true || attributes?.animated == true)	variables.result &= ' progress-bar-striped';
	if(attributes?.animated		== true)			variables.result &= ' active';
	if(attributes?.styleClass	!= "")			variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';		
											variables.result &= '"';
											
											variables.result &= application.filterAttributes(attributes);
											
											variables.result &= ' style="width : #encodeForHTMLAttribute(attributes.width)#%;';
	if(attributes?.style		!= "")			variables.result &= ' #encodeForHTMLAttribute(attributes.style)#';
											variables.result &= '"';
											variables.result &= '>';
								
								
											variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);
						
								
	if(thisTag.GeneratedContent	== "")			variables.result &= '&nbsp;';							
	
											variables.result &= variables.crlf & '</div><!-- /.progress-bar -->';
											variables.result &= variables.crlf & '</div><!-- /.progress -->';
								
     
	if (attributes?.cacheid != "")				CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)						writeOutput(variables.result);
     
	break;
	}
 </cfscript>