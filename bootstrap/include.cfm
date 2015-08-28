<!---@ Description: Support for cfinclude. Does not directly generate content --->




<cfif !thisTag.HasEndTag> 
	<cfabort showerror="An end tag is required for b:include.">
</cfif>	
	
	

<cfswitch expression="#thisTag.ExecutionMode#">
<cfcase value="start">

	<cfscript>
	variables.result = "";
	variables.crlf =  chr(13) & chr(10);
  
	param attributes.processed 	= true;
	param attributes.rendered 	= true;
	param attributes.template;

     
	if (!attributes.processed) exit "exitTag";
	</cfscript>
</cfcase>
     
<cfcase value = "end">     
     
     <!-- include -->
     <cfif attributes.rendered><cfinclude template="../views/#attributes.template#"></cfif>
     <!-- /include -->	
     
</cfcase>
</cfswitch>     
     
