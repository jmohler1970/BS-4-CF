
<cfimport taglib="../bootstrap">



<row>
	<column span="12">	
		<h1 pageHeader="true">Well</h1>
		<p>b:well</p>
	</column>	
</row>




<h2>Introduction</h2>

<p>Use the well as a simple effect on an element to give it an inset effect.</p>

<p>This is also the no prefix example. None of the ColdFusion custom tags have a prefix.</p>



<well>
    <h3>Well Header</h3>
    Well content.
</well>


<h5>Markup:</h5>

<pre>
&lt;well&gt;
    &lt;h3&gt;Well Header&lt;/h3&gt;
    Well content.
&lt;/well&gt;
</pre>

<p>&nbsp;</p>


<panel look="info" title="Attributes of &lt;b:well&gt;">

	<table>
	<thead>
		<tr>
			<th>Attribute</th>
			<th>Default value</th>
			<th>Description</th>
		</tr>	
	</thead>
	
	<tbody>
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
			<td>size</td>
			<td>(none)</td>
			<td>How much padding should this well have</td>
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
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of title</td>
		</tr>


	</tbody>
	</table>
</panel>




<h3>Examples</h3>


<row>
	<column span="4">
		<well size="sm">Look, I'm in a small well!</well>
	</column>

	<column span="4">
		<well size="lg">Look, I'm in a large well!</well>
	</column>
	
	<column span="4">
		<well><well>Look, I'm in a well in a well!</well></well>
	</column>
</row>	

