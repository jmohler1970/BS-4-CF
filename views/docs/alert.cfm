
<cfimport prefix="b" taglib="../_bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageHeader="true">Alert Examples</b:h1>
		<p>&lt;b:alert&gt;</p>
	</b:column>	
</b:row>




<b:h1 key="introduction" />


<b:blockquote>
	Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.

	<footer>Quote from <cite>Bootstrap documentation</cite></footer>
</b:blockquote>




<b:panel look="info" title="Attributes of <b:alert>">

	<b:table>
	<thead>
		<tr>
			<th></th>
			<b:th key="panel_attribute" />
			<th>Default value</th>
			<b:th key="plugin_desc" />
			<th>Sanitized</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td></td>
			<td>generatedContent</td>
			<td>(none)</td>
			<b:td key="common" />
			<td><b:label look="danger">No</b:label> Make sure that the inner content is clean</td></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>closable</td>
			<td>false</td>
			<td>Does this include a close X?</td>
			<td>No</td>
		</tr>
		<tr>
			<td></td>
			<td>id</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>isSafeHTML</td>
			<td>true</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td> <b:label look="success">i18n</b:label></td>
			<td>key</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>	
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>look</td>
			<td>warning</td>
			<td>This uses the look because it is assumed that this is message after an action has happened.</td>
			<td>Must be in valid value list defined in <code>application.cfc</code></td>
		</tr>
		<tr>
			<td></td>
			<td>processed</td>
			<td>true</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>profile</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td> <b:label look="success">i18n</b:label></td>
			<td>placeholder</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>rendered</td>
			<td>true</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>throwOnError</td>
			<td>false</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>tooltip</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>tooltipPosition</td>
			<td>bottom</td>
			<b:td key="common" />
			<td></td>
		</tr>

	</tbody>
	</b:table>
</b:panel>



<h2>Basic Example</h2>

<b:alert look="success"><strong>Well done!</strong> You successfully read this important alert message.</b:alert>
<b:alert look="info"><strong>Heads up!</strong> This alert needs your attention, but it's not super important. </b:alert>
<b:alert look="warning"><strong>Warning!</strong> Best check yo self, you're not looking too good. </b:alert>
<b:alert look="danger"><strong>Oh snap!</strong> Change a few things up and try submitting again. </b:alert>
<b:alert look="info" title="Heads up!">This alert needs your attention, but it's not super important. </b:alert>


<h2>Dismissible</h2>

<b:alert look="info" title="Heads up!" closable="true">This alert needs your attention, but it's not super important. </b:alert>


<h2>i18n language file</h2>

<b:alert look="danger" key="SERVICE_UNAVAILABLE" />


<b:alert look="success" key="SITE_UPDATED" />






