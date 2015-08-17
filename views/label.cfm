
<cfimport prefix="b" taglib="../bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Label &amp; Badge Examples</b:h1>
		<p>&lt;b:badge&gt; and &lt;b:label&gt;</p>
	</b:column>	
</b:row>






<b:h2>Introduction</b:h2>


<b:panel look="info" title="Attributes of &lt;b:badge&gt; &amp; &lt;b:label&gt;">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<th>Default value</th>
			<th>Description</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td>binding</td>
			<td>(none)</td>
			<td>Finds data in <code>rc.*</code> scope</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>id=</code>.</td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td>This like a <code>&lt;cfif&gt;</code></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td>This is like <code>&lt;cfsilent&gt;</code></td>
		</tr>
		<tr>
			<td>severity</td>
			<td>warning for b:badge<br />
				default for b:label</td>
			<td>Like look on other tags. This is forces to lower case. ColdFusion is case insensitive and this allows that pattern to continue</td>
		</tr>
		<tr>
			<td>style</td>
			<td>(none)</td>
			<td>Pass though of CSS style. Use Bootstrap classes instead if possible</td>
		</tr>
		<tr>
			<td>styleClass</td>
			<td>(none)</td>
			<td>Pass though of CSS class.</td>
		</tr>
		<tr>
			<td>text</td>
			<td>Required to not exist</td>
			<td>BootsFaces has this wrong. b:banner and b:label are very similar and should both be powered by value. One of the reasons why this is wrong, is <code>text=</code> is used for context colors. See helpers for more details </td>
		</tr>

		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of title</td>
		</tr>
		<tr>
			<td>value</td>
			<td>(none)</td>
			<td>The content of what should be shown. If value is blank, this will still be rendered. This can be useful for Javascript to dynamically updating content.</td>
		</tr>


	</tbody>
	</b:table>
</b:panel>





<h2>Example</h2>

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
				<td><b:label value="#severity#" severity="#severity#" /></td>
				<td><b:badge value="#badge#" /></td>
				<td><b:label value="#severity2#" severity="#severity2#" /></td>
				<td><b:badge value="#badge2#" /></td>
			</tr>
		</cfoutput>	
	</tbody>
	</b:table>
</b:well>


<h3>Inside of headers</h3>



<b:h1>Example heading <b:label value="New" /></b:h1>
<b:h2>Example heading <b:label value="New" /></b:h2>
<b:h3>Example heading <b:label value="New" /></b:h3>
<b:h4>Example heading <b:label value="New" /></b:h4>
<b:h5>Example heading <b:label value="New" /></b:h5>
<b:h6>Example heading <b:label value="New" /></b:h6>





