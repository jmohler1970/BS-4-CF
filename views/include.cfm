
<cfimport prefix="b" taglib="../bootstrap">



<row>
	<column span="12">	
		<h1 pageHeader="true">Include</h1>
		<p>b:include</p>
	</column>	
</row>


<h2>Introduction</h2>

<p>This is a passthrough of <code>&lt;cfinclude&gt;</code>. It also has the conditional processing of processed and rendered</p>

<b:panel look="info" title="Attributes of <b:include>">

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
			<td>processed</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>template</td>
			<td>(required)</td>
			<td>Pass through of <code>template=</code> attribute. If a relative path is used, it is from the install directory of this tag. It is recommended absolute paths be used</td>
			<td><b:label look="danger">No</b:label>  Value is assumed to be clean</td>
		</tr>
	</tbody>
	</b:table>
</b:panel>



<h2>Example</h2>


<b:include template="simple.cfm" />


