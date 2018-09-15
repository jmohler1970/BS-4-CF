<!---@ Description: Support for panel --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:panel."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();


	param attributes.collapsible		= true;
	param attributes.contentClass		= "";
	param attributes.contentStyle		= "";
	param attributes.footer			= "";
	param attributes.footerClass		= "";
	param attributes.footerStyle		= "";
	param attributes.look			= "default";
	param attributes.processed		= true;
	param attributes.rendered 		= true;
	param attributes.size			= "";
	param attributes.styleClass		= "";
	param attributes.title			= "";
	param attributes.titleClass		= "";
	param attributes.titleStyle		= "";


     if (!attributes.processed) exit "exitTag";

	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}

	break;

case "end" :


									variables.result &= '<div class="panel panel-#encodeForHTMLAttribute(attributes.look.lcase())#';
	if (attributes?.styleClass 	!= "") 	variables.result &= ' #encodeForHTMLAttribute(attribites.styleClass)#';						
	   								variables.result &= '"';
	   								
	   								variables.result &= application.filterAttributes(attributes);
	   								
	   								variables.result &= '>';
	   							
	   							
	if (attributes?.title 		!= "") 	variables.result &= '<div class="panel-heading';
	if (attributes?.title != "" && attributes?.titleClass != "") 	variables.result &= encodeForHTMLAttribute(attributes.titleClass);
	if (attributes?.title 		!= "")	variables.result &= '"'; // end class
	if (attributes?.title != "" && attributes?.titleStyle != "")	variables.result &= ' style="#encodeForCSS(attributes.titleStyle)#"';
	if (attributes?.title 		!= "")	variables.result &= '>#encodeForHTML(attributes.title)#</div>';  							
	   							
									variables.result &= '<div class="panel-body'; 
	if(attributes?.contentClass	!= "")	variables.result &= ' #encodeForHTMLAttribute(attributes.contentClass)#';		
	   								variables.result &= '"';
	
	if(attributes?.contentStyle	!= "")	variables.result &= ' style="#encodeForCSS(attributes.contentStyle)#"';                 
									variables.result &= '>';
	
								
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);	
									
						
									variables.result &= '</div><!-- /.end panel body -->';

	if (attributes?.footer != "") 		variables.result &= '<div class="panel-footer';
	if (attributes?.footer != "" && attributes?.footerClass != "") 	variables.result &= encodeForHTMLAttribute(attributes.footerClass);
	if (attributes?.footer != "")			variables.result &= '"'; // end class
	if (attributes?.footer != "" && attributes?.footerStyle != "")	variables.result &= ' style="#encodeForCSS(attributes.footerStyle)#"';
	if (attributes?.footer != "")			variables.result &= '>#encodeForHTML(attributes.footer)#</div>';  							
								
									variables.result &= '</div><!-- /.end panel -->';
	
	if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);						
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>