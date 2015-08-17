
<cfimport prefix="b" taglib="../bootstrap">


<b:row>
	<b:column span="12">	
		<b:h1 pageHeader="true">Jumbotron Examples</b:h1>
		<p>b:jumbotron</p>
	</b:column>
</b:row>


<h2>Introduction</h2>




<b:panel look="info" title="Attributes of &lt;b:jumbotron&gt;">

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
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of title</td>
		</tr>


	</tbody>
	</b:table>
</b:panel>



<h2>Example</h2>



<b:jumbotron>
    <b:h1>Hello, world!</b:h1>
    <b:p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</b:p>
    <b:p><b:commandLink action="?view=jumbotron">Learn more</b:commandLink></b:p>
</b:jumbotron>




