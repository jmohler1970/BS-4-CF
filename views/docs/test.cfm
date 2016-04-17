

<cfset data = "Some data">
<cfset data2 = { data = 1}>



<cfscript>
if (variables.comments?.len() > 0)	{
	
	writeoutput("We have comments");
	}
else	{
	writeoutput("No, we don't!");
	}	
</cfscript>	


<br />

<cfoutput>
	
	#data.encodeForHTMLAttribute()#
	
	#data2.data.encodeForHTMLAttribute()#
	
	
	<cfset attributes = {span = { xs = 4 }}>
	
	
	#attributes.span.Xs.encodeForHTMLAttribute()#
</cfoutput>	