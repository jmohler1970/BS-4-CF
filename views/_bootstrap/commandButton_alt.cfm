<!---@ Description: Support for submit button. If you don't want to submit, use button instead --->


<cfswitch expression="#thisTag.ExecutionMode#">
<cfcase value="start">
	
	<cfscript>
	param attributes.disabled		= false;	if(attributes.disabled == "disabled") attributes.disabled = true;
	param attributes.icon			= "";
	param attributes.iconAlign		= "left";
	param attributes.id				= "";
	param attributes.look			= "default";
	param attributes.name			= "";
	param attributes.processed		= true;
	param attributes.style			= "";
	param attributes.styleClass		= "";
	param attributes.tooltip			= "";
	param attributes.type			= "submit";	// as opposed to reset, use button for buttons
	param attributes.value			= "";		// if this is blank, perhaps an icon should be shown
	
	if (!attributes.processed) exit "exitTag";
	</cfscript>
	
</cfcase>	
<cfcase value="end">

	
	<cfoutput>
	<button 	type	= "#encodeForHTMLAttribute(attributes.type)#" 
			class= "btn btn-#encodeForHTMLAttribute(attributes.look.lcase())# #encodeForHTMLAttribute(attributes.styleClass)#"
	
	<cfif attributes.id		NEQ "">	id		= "#encodeForHTMLAttribute(attributes.id)#"	
	<cfif attributes.name	NEQ "">	name		= "#encodeForHTMLAttribute(attributes.name)#"	
	<cfif attributes.style	NEQ "">	style	= "#encodeForHTMLAttribute(attributes.style)#"
	<cfif attributes.tooltip	NEQ "">	title	= "#encodeForHTMLAttribute(attributes.tooltip)#"
	<cfif attributes.disabled>		disabled	= "disabled"
	><!--- This is the end of the button start tag --->
		
		
	<cfif attributes.icon 		NEQ "" AND attributes.iconAlign EQ "left">
							<i class="glyphicon glyphicon-#attributes.icon#"></i>
	</cfif>
	#attributes.value#										}
	<cfif attributes.icon 		NEQ "" AND attributes.iconAlign EQ "right">
							<i class="glyphicon glyphicon-#attributes.icon#"></i>
	</cfif>
	</button>
	</cfoutput>
	
</cfcase>	
</cfswitch>

