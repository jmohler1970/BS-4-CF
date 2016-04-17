<!---@ Description: Support for table --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:table."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result	= "";
	variables.crlf 	= chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().ListToArray();


     param attributes.condensed		= true;
     param attributes.processed		= true;
	param attributes.rendered 		= true; // removes content not actuall td
	param attributes.responsive		= true;
	param attributes.striped			= true;
     

	if (!attributes.processed) exit "exitTag";
	
		
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
		
	break;
     
case "end" :     
          

     if(attributes?.responsive	== true)		variables.result &= '<div class="table-responsive">';  
     									variables.result &= variables.crlf;  
	   									variables.result &= '<table class="table';
	if(attributes?.bordered		== true)		variables.result &= ' table-bordered';
	if(attributes?.condensed		== true)		variables.result &= ' table-condensed table-sm';
	if(attributes?.hover		== true)		variables.result &= ' table-hover';
	if(attributes?.striped		== true)		variables.result &= ' table-striped';
				
	if(attributes?.styleClass	!= "")		variables.result &= ' #encodeForHTMLAttribute(attributes.styleClass)#';		
	   									variables.result &= '"';
	   										
	   									variables.result &= application.filterAttributes(attributes);
	   										
               
										variables.result &= '>' & variables.crlf;
											
	if(attributes?.colHeaders	!= "")		{
											variables.result &= '<thead>' & variables.crlf & '<tr>' & variables.crlf;
									for (variables.colHeader in attributes.colHeaders.listToArray())	{
											variables.result &= '<th>' & variables.colHeader & '</th>'& variables.crlf;
											}
											variables.result &= '</tr>' & variables.crlf & '</thead>' & variables.crlf;
									} // end thead
								
	
										variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);							

	
	if(attributes?.colFooters != "")		{
											variables.result &= '<tfoot>' & variables.crlf & '<tr>' & variables.crlf;
									for (variables.colFooter in attributes.colFooters.listToArray())	{
											variables.result &= '<th>' & variables.colFooter & '</th>'& variables.crlf;
											}
											variables.result &= '</tr>' & variables.crlf & '</tfoot>' & variables.crlf;
									} // end thead
		
							
										variables.result &= '</table>';
     if(attributes?.responsive	== true) 		variables.result &= '</div>';    
	
	
	if (attributes?.cacheid != "")			CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)					writeOutput(variables.result);
     
	break;
	}
     
 
</cfscript>