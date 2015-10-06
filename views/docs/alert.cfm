
<cfimport prefix="b" taglib="../_bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageHeader="true">Alert Examples</b:h1>
		<p>&lt;b:alert&gt;</p>
	</b:column>	
</b:row>




<b:h2>Introduction</b:h2>


<b:blockquote>
	Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.

	<footer>Quote from <cite>Bootstrap documentation</cite></footer>
</b:blockquote>




<b:panel look="info" title="Attributes of <b:alert>">

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
			<td>closable</td>
			<td>false</td>
			<td>Does this include a close X?</td>
			<td>No</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>isSafeHTML</td>
			<td>true</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>look</td>
			<td>warning</td>
			<td>This uses the look because it is assumed that this is message after an action has happened.</td>
			<td>Must be in valid value list defined in <code>application.cfc</code></td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>profile</td>
			<td>(none)</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>throwOnError</td>
			<td>false</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>tooltipPosition</td>
			<td>bottom</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
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

<b:alert look="success"><strong>Well done!</strong> You successfully read this important alert message.</b:alert>
<b:alert look="info"><strong>Heads up!</strong> This alert needs your attention, but it's not super important. </b:alert>
<b:alert look="warning"><strong>Warning!</strong> Best check yo self, you're not looking too good. </b:alert>
<b:alert look="danger"><strong>Oh snap!</strong> Change a few things up and try submitting again. </b:alert>
<b:alert look="info" title="Heads up!">This alert needs your attention, but it's not super important. </b:alert>


<h3>Dismissible</h3>

<b:alert look="info" title="Heads up!" closable="true">This alert needs your attention, but it's not super important. </b:alert>

