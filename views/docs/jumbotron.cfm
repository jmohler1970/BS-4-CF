
<cfimport prefix="b" taglib="../_bootstrap">


<b:row>
	<b:column span="12">	
		<b:h1 pageHeader="true">Jumbotron Examples</b:h1>
		<p>b:jumbotron</p>
	</b:column>
</b:row>


<b:h1 key="introduction" />




<b:panel look="info" title="Attributes of <b:jumbotron>">

	<b:table styleClass="datatables">
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
			<td><b:label look="warning">Ehcache</b:label></td>
			<td>cacheid</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
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
			<td><a href="~/common">See Common Features</a> </td>
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
			<td> <b:label look="success">i18n</b:label></td>
			<td>placeholder</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
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
			<td><a href="~/common">See Common Features</a> </td>
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
			<td></td>
			<td>tight</td>
			<td>false</td>
			<td>Quickly set <code>margin : 0; padding-top : 0; padding-right : 0</code></td>
			<td>Must evaluate to boolean</td>
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



<h2>Example</h2>



<b:jumbotron>
    <b:h1>Hello, world!</b:h1>
    <b:p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</b:p>
    <b:p><b:commandLink action="~/docs/jumbotron">Learn more</b:commandLink></b:p>
</b:jumbotron>


<h2>Example with buttongroup</h2>

<p> This also uses i18n language files and cacheing</p>

<b:jumbotron tight="true" cacheid="example">
	<b:buttonGroup list="true" pull="right">
		<b:commandLink href="##" icon="user" value="James Mohler" />
		<b:commandLink href="##" icon="envelope" value="News" />
		<b:commandLink href="##" icon="log-out" />
	</b:buttonGroup>
	
	<b:h1 key="Control_Panel" />
</b:jumbotron>



