
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
			<th>Sanitized</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>id=</code>.</td>
			<td><code>REFindNoCase('[^0-9A-Za-z ]')</code> is false.
				 Must be less than  <cfoutput>#application.Bootstrap.limit.id#</cfoutput> characters
			</td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td>This like a <code>&lt;cfif&gt;</code></td>
			<td>No</td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td>This is like <code>&lt;cfsilent&gt;</code></td>
			<td>No</td>
		</tr>
		<tr>
			<td>tight</td>
			<td>false</td>
			<td>Quickly set <code>margin : 0; padding-top : 0; padding-right : 0</code></td>
			<td>No</td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of title</td>
			<td><code>encodeForHTMLAttribute()</code></td>
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


<h2>Example with buttongroup</h2>


<b:jumbotron tight="true">
	<b:buttonGroup list="true" pull="right">
		<b:commandLink href="##" icon="user" value="James Mohler" />
		<b:commandLink href="##" icon="envelope" value="News" />
		<b:commandLink href="##" icon="log-out" />
	</b:buttonGroup>
	
	<b:h1>Omega! Software Inc.</b:h1>
</b:jumbotron>



