
<cfimport prefix="b" taglib="../bootstrap">



<b:row>
	<b:column span="12">	

		<b:h1 pageHeader="true">Panels</b:h1>
		<p>p:panel</p>
	</b:column>	
</b:row>




<b:h2>Introduction</b:h2>



<b:panel look="info" title="Attributes for &lt;b:panel&gt;">

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
			<td>Try to find the value of this tag in the <code>rc.*</code> scope. If found then use its value, else use the content between the tags.</td>
		</tr>
		<tr>
			<td>collapsed</td>
			<td>false</td>
			<td>Is it collapsed</td>
		</tr>
		<tr>
			<td>collapsible</td>
			<td>false</td>
			<td>can it be collapsed</td>
		</tr>
		<tr>
			<td>contentClass</td>
			<td>(none)</td>
			<td>CSS class for body</td>
		</tr>
		<tr>
			<td>contentStyle</td>
			<td>(none)</td>
			<td>CSS style for body</td>
		</tr>
		
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML id.</td>
		</tr>
		<tr>
			<td>look</td>
			<td>default</td>
			<td>Look and feel of header and edge</td>
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
			<td>title</td>
			<td>(none)</td>
			<td>Heading for panel</td>
		</tr>

		<tr>
			<td>titleClass</td>
			<td>(none)</td>
			<td>CSS class for title</td>
		</tr>
		<tr>
			<td>titleStyle</td>
			<td>(none)</td>
			<td>CSS style for title</td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of title</td>
		</tr>
	</tbody>
	</b:table>
</b:panel>