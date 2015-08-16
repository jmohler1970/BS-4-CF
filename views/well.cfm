
<cfimport prefix="b" taglib="../bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	
			<b:h1>b:well</b:h1>
		</b:column>	
	</b:row>
</div>




<b:h2>Introduction</b:h2>

<p>Use the well as a simple effect on an element to give it an inset effect.</p>



<b:well>
    <h3>Well Header</h3>
    Well content.
</b:well>


<h5>Markup:</h5>

<pre>
&lt;b:well&gt;
    &lt;h3&gt;Well Header&lt;/h3&gt;
    Well content.
&lt;/b:well&gt;
</pre>

<p>&nbsp;</p>


<b:panel look="info" title="Attributes of &lt;b:well&gt;">

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
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML id. For selectOneRadio, set this the "auto" so that an id can be created for form and label.</td>
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
	</b:table>
</b:panel>




<h3>Examples</h3>


<b:row>
	<b:column span="4">
		<b:well size="sm">Look, I'm in a small well!</b:well>
	</b:column>

	<b:column span="4">
		<b:well size="lg">Look, I'm in a large well!</b:well>
	</b:column>
	
	<b:column span="4">
		<b:well><b:well>Look, I'm in a well in a well!</b:well></b:well>
	</b:column>
</b:row>	

