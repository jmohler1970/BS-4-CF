
<cfimport prefix="b" taglib="../_bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Table Examples</b:h1>
		<p>&lt;b:table&gt;, &lt;b:row&gt;, &lt;b:td&gt;, &lt;b:th&gt;</p>
	</b:column>	
</b:row>


<b:h1 key="Introduction" />


<p>The most common for tables to be populated is via database query. This example manually loads data so that we don't have have a database.</p>

<p>Notice that there is a delete column. This will be used to control which rows get rendered</p>



<h2>b:table</h2>

<b:panel look="info" title="Attributes of <b:table>">

	<b:table styleClass="datatables">
	<thead>
		<tr>
			<td></td>
			<b:th key="panel_attribute" />
			<b:th text="nowrap">Default value</b:th>
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
			<td><b:label look="danger" key="No" />this is often more than the default value as set in antisamy. Make sure that the inner content is clean</td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>bordered</td>
			<td>true</td>
			<td>tables will have borders. These are set via Bootstrap CSS</td>
			<td>Must evaluate to boolean</td>
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
			<td>colFooters</td>
			<td>(none)</td>
			<td>This generates <code>&lt;tfoot&gt;</code> section of your table. This should make it easier to keep table footers consistent. This accepts a comma separated list.</td>
			<td><b:label look="danger" key="No" />Make sure that the inner content is clean</td>
		</tr>	
		
		<tr>
			<td></td>
			<td>colHeaders</td>
			<td>(none)</td>
			<td>This generates <code>&lt;thead&gt;</code> section of your table. This should make it easier to keep table columns consistent. This accepts a comma separated list.</td>
			<td><b:label look="danger" key="No" />Make sure that the inner content is clean</td>
		</tr>	
		
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>condensed</td>
			<td>true</td>
			<td>The table will have slightly smaller cell padding</td>
			<td>Must evaluate to boolean</td>
		</tr>
		

		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>hover</td>
			<td>false</td>
			<td>Hover effect when mouse is over table</td>
			<td>Must evaluate to boolean</td>
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
			<td>false</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td> <b:label look="success">i18n</b:label></td>
			<td>key</td>
			<td>(none)</td>
			<b:td key="key_for_cache" />
			<td></td>
		</tr>
		<tr>
			<td> <b:label look="success">i18n</b:label></td>
			<td>placeholder</td>
			<td>(none)</td>
			<b:td>See key</b:td>
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
			<td><b:label>Bootstrap</b:label></td>
			<td>responsive</td>
			<td>true</td>
			<td>Make tables scroll horizontally on small devices (under 768px). When viewing on anything larger than 768px wide, you will not see any difference in these tables.</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>stripped</td>
			<td>true</td>
			<td>Rows will alternate light and dark backgrounds</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td></td>
			<td>style</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>styleClass</td>
			<td>(none)</td>
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


<p>All icon examples use colHeaders <b:commandLink action="~/docs/icons" value="See Icons" /></p>
	

<h2>b:tr</h2>
	
	
<b:panel look="info" title="Attributes of <b:tr>">

	<b:table styleClass="datatables">
	<thead>
		<tr>
			<th></th>
			<b:th key="panel_attribute" />
			<b:th text="nowrap">Default value</b:th>
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
			<td><b:label look="danger" key="No" />this is often more than the default value as set in antisamy. Make sure that the inner content is clean. Having said all that, it is preferable to use the &lt;b:td&gt; and &lt;b:th&gt; inside of this tag</td>
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
			<td>data-*</td>
			<td>(none)</td>
			<td class="text-nowrap"><a href="~/common">See Common Features</a></td>
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
			<td>false</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td> <b:label look="success">i18n</b:label></td>
			<td>key</td>
			<td>(none)</td>
			<b:td key="key_for_cache" />
			<td></td>
		</tr>

		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>look</td>
			<td>(none)</td>
			<td>This for contextual classes</td>
			<td>Data must belong to the valid value list set in <code>application.cfc<code></td>
		</tr>
		<tr>
			<td></td>
			<td>ng-*</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>on*</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td> <b:label look="success">i18n</b:label></td>
			<td>placeholder</td>
			<td>(none)</td>
			<b:td>See key</b:td>
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
			<td>style</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>styleClass</td>
			<td>(none)</td>
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


<h2>b:th &amp; b:td</h2>

<b:panel look="info" title="Attributes of <b:td> & <b:th>">

	<b:table styleClass="datatables">
	<thead>
		<tr>
			<th></th>
			<b:th key="panel_attribute" />
			<b:th text="nowrap">Default value</b:th>
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
			<td><b:yesnoFormat value="1" /></td>
		</tr>
		<tr>
			<td></td>
			<td>binding</td>
			<td>(none)</td>
			<td>Reserved for future use</td>
			<td>N/A</td>
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
			<td>data-*</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>hidden</td>
			<td>(none)</td>
			<td>Should this cell be hidden when the screen is small. Unlike normal Bootstrap hidden, if hidden when sm then xs is hidden too.
				Likewise, if hidden on md, then sm and xs are hidden too. If the default Bootstrap behavior is desired, then use <code>styleClass=</code> instead.
			</td>
			<td><b:label look="danger">No</b:label></td>
		</tr>
		
		<tr>
			<td> <b:label look="success">i18n</b:label></td>
			<td>key</td>
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
			<td>false</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>look</td>
			<td>(none)</td>
			<td>This for contextual classes</td>
			<td>Data must belong to the valid value list set in <code>application.cfc<code></td>
		</tr>
		<tr>
			<td></td>
			<td>ng-*</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>on*</td>
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
			<td><a href="~/common">See Common Features</a> <b>Warning:</b> This will also process tags in between the start and end tags.</td>
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
			<td><a href="~/common">See Common Features</a> but only for content between the tags</td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>style</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>styleClass</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>text</td>
			<td>(none)</td>
			<td>This is text content classes. This takes care off alignment and wrapping.</td>
			<td><b:label look="danger">No</b:label></td>
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


<b:h2 key="examples" />


<b:table>
<thead> 
<tr>
	<th>ID</th>
	<th>Icon</th>
	<th>Album</th>
	<b:th key="plugin_desc" />
	<b:th key="plugin_ver"  />
	<th></th> 
</tr>
</thead>	

<tbody>
<cfoutput query="rc.qryData">
	<b:tr rendered="#IIF(Delete, 0, 1)#">
		<b:td isSafeHTML="true"><b:badge value="#ID#" /></b:td>
		<b:td isSafeHTML="true" data-sort="#ID#"><b:icon name="#icon#" /></b:td>
		<b:td>#Album#</b:td>
		<b:td>#Message#</b:td>
		<b:td>#Score#</b:td>
		<b:td isSafeHTML="true"><b:commandLink action="###ID#" size="xs" look="primary">View #id#</b:commandLink></b:td>
	</b:tr>
</cfoutput>	
</tbody>
</b:table>

<h2>Example with fields that go hidden.</h2>

<p>Make page narrow to see fields disappear.</p>

<b:table>
<thead> 
<tr>
	<b:th hidden="md">ID</b:th>
	<b:th hidden="sm">Icon</b:th>
	<b:th hidden="xs">Album</b:th>
	<b:th key="plugin_desc" />
	<b:th key="plugin_ver"  />
	<b:th></b:th> 
</tr>
</thead>	

<tbody>
<cfoutput query="rc.qryData">
	<b:tr rendered="#IIF(Delete, 0, 1)#">
		<b:td hidden="md" isSafeHTML="true"><b:badge value="#ID#" /></b:td>
		<b:td hidden="sm" isSafeHTML="true" data-sort="#ID#"><b:icon name="#icon#" /></b:td>
		<b:td hidden="xs">#Album#</b:td>
		<b:td>#Message#</b:td>
		<b:td>#Score#</b:td>
		<b:td isSafeHTML="true"><b:commandLink action="###ID#" size="xs" look="primary">View #id#</b:commandLink></b:td>
	</b:tr>
</cfoutput>	
</tbody>
</b:table>


<h2>Example with jQuery datatables.</h2>


<b:blockquote>

DataTables is a plug-in for the jQuery Javascript library. It is a highly flexible tool, based upon the foundations of progressive enhancement, and will add advanced interaction controls to any HTML table.

	<footer><a href="https://www.datatables.net/">https://www.datatables.net/</a></footer>
</b:blockquote>

<p>This example also includes supplemental Bootstrap look and feel</p>


<b:table styleClass="datatables" colHeaders="ID,Icon,Album,Description,Version,&nbsp;">
<tbody>
<cfoutput query="rc.qryData">
	<b:tr rendered="#IIF(Delete, 0, 1)#">
		<b:td isSafeHTML="true"><b:badge value="#ID#" /></b:td>
		<b:td isSafeHTML="true" data-sort="#ID#"><b:icon name="#icon#" /></b:td>
		<b:td>#Album#</b:td>
		<b:td>#Message#</b:td>
		<b:td>#Score#</b:td>
		<b:td isSafeHTML="true"><b:commandLink action="###ID#" size="xs" look="primary">View #id#</b:commandLink></b:td>
	</b:tr>
</cfoutput>	
</tbody>
</b:table>





<h3>cfdump of content</h3>


<cfdump var="#rc.qryData#" expand="no">



