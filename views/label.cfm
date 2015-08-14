
<cfimport prefix="b" taglib="../bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Label Examples</b:h1>
			<p>View code for details.</p>
		</b:column>	
	</b:row>
</div>




<b:h2>Introduction</b:h2>

<!--- Lets load up a query --->
<cfscript>
rc.qryData = QueryNew("Severity,Badge,Severity2,Badge2");


rc.qryData.AddRow([
	{Severity = "default", 	Badge = 1,  Severity2 = "success", badge2 = 7 },
	{Severity = "info", 	Badge = 15, Severity2 = "primary", badge2 = 4 },
	{Severity = "warning", 	Badge = 7,  Severity2 = "danger",  badge2 = 3 }
	]
	); 
</cfscript>





<b:well>
	<b:table>
	<tbody>
		<cfoutput query="rc.qryData">
			<tr>
				<td><b:label text="#severity#" severity="#severity#" /></td>
				<td><b:badge value="#badge#" /></td>
				<td><b:label text="#severity2#" severity="#severity2#" /></td>
				<td><b:badge value="#badge2#" /></td>
			</tr>
		</cfoutput>	
	</tbody>
	</b:table>
</b:well>