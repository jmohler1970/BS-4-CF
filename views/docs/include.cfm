
<cfimport prefix="b" taglib="../_bootstrap">



<row>
	<column span="12">	
		<h1 pageHeader="true">Include</h1>
		<p>b:include</p>
	</column>	
</row>


<b:h1 key="introduction" />

<p>This is a passthrough of <code>&lt;cfinclude&gt;</code>. It also has the conditional processing of processed and rendered</p>

<b:panel look="info" title="Attributes of <b:include>">

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
			<td><b:label look="warning">Ehcache</b:label></td>
			<td>cacheid</td>
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
			<td></td>
			<td>key</td>
			<td>(none)</td>
			<td>This not used to pull content from a language file. This is used for a pass through to generate the full cacheid. This field is included that that cacheids are created the same way on all tags.</td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>placeholder</td>
			<td>(none)</td>
			<td>See key</td>
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
			<td></td>
			<td>template</td>
			<td>(required)</td>
			<td>Pass through of <code>template=</code> attribute. If a relative path is used, it is from the install directory of this tag. It is recommended absolute paths be used</td>
			<td><b:label look="danger">No</b:label>  Value is assumed to be clean</td>
		</tr>
	</tbody>
	</b:table>
</b:panel>



<h2>Example</h2>


<b:well>
	<b:include template="../docs/simple.cfm" />
</b:well>


<h2>Example with cacheing</h2>

<p>If you do a refresh on this page (or visit this page again), the cached content below will not have an updated time.</p>

<p><b:commandLink href="~/docs/include" look="primary" icon="refresh" value="Reload" /></p>

<b:well>
	<b:include template="../docs/simple.cfm" cacheid="Simple Cache Test" />
</b:well>

