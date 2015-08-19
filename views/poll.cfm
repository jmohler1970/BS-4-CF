<cfimport prefix="b" taglib="../bootstrap">

 
 
<b:row>
	<b:column span="12">	

		<b:h1 pageheader="true">Poll Examples</b:h1>
		<p>b:poll</p>
	</b:column>	
</b:row>



<h2>Introduction</h2>

<p>Content in the action is checked periodically and then displayed on the screen.</p>


<b:panel look="info" title="Attributes for all &lt;b:poll&gt;">

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
			<td>action</td>
			<td>required</td>
			<td>Source for content. Expecting text</td>
		</tr>
		<tr>
			<td>id</td>
			<td>auto</td>
			<td>Pass through of HTML id.</td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td>This like a <code>&lt;cfif&gt;</code></td>
		</tr>
		<tr>
			<td>interval</td>
			<td>5000ms</td>
			<td>How long until content is reloaded</td>
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
			<td>timeout</td>
			<td>5000ms</td>
			<td>How long until request is given up</td>
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


<h3>Minimal Config</h3>

<b:p><b>The time is now:</b> <b:poll action="ajax/poll.cfm">Loading...</b:poll></b:p>


<b:alert><b>The time is now:</b> <b:poll action="ajax/poll.cfm">Loading...</b:poll></b:alert>

