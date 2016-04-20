<!---@ Description: Support for blockquote --->




<cfscript>
if (!thisTag.HasEndTag) 
	abort "An end tag is required for b:blockquote."; 
	
	

switch (thisTag.ExecutionMode)     {
case "start" :

	variables.result 	= "";
	variables.crlf 	=  chr(13) & chr(10);
	variables.tagStack	= getBaseTagList().listToArray();
  


     param attributes.processed 		= true;
 	param attributes.rendered 		= true;

	

     if (!attributes.processed) exit "exitTag";
     
	variables.fullCacheid = variables.tagStack[1] & " " & attributes?.key & " " & attributes?.cacheid;
	if (attributes?.cacheid != "" && cacheidExists(variables.fullcacheid, application.Bootstrap.cache.content) && attributes.rendered)	{
							writeOutput(cacheGet(variables.fullCacheid, application.Bootstrap.cache.content));
							exit "exitTag";
							}
     
	break;
     
case "end" :     
	if( attributes?.value 	!= "")										thisTag.generatedContent = attributes.value;
     
	
									variables.result &= '<blockquote class="';
	if(attributes?.reverse	== true)		variables.result &= ' blockquote-reverse';	
	if(attributes?.text		!= "")		variables.result &= ' text-#attributes.text.encodeForHTMLAttribute()#';	
	if(attributes?.styleClass	!= "")	variables.result &= ' #attributes.styleClass.encodeForHTMLAttribute()#';		
	   								variables.result &= '"';
	   								
									variables.result &= application.filterAttributes(attributes);
           
									variables.result &= '>';
	
									variables.result &= application.generateContent(thisTag.GeneratedContent, variables.tagstack, attributes);
	   								

	if(attributes?.footer	!= "" )		variables.result &= '<footer>' & attributes.footer & '</footer>';								
									variables.result &= '</blockquote>';
     
     
     if (attributes?.cacheid != "")		CachePut(variables.fullCacheid, variables.result, 1, 1, application.Bootstrap.cache.content);
     
     thisTag.GeneratedContent = "";
     if (attributes.rendered)				writeOutput(variables.result);
     
	break;
	}
 </cfscript>