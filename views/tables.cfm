
<cfimport prefix="b" taglib="../bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Table Examples</b:h1>
		<p>&lt;b:table&gt;, &lt;b:row&gt;, &lt;b:td&gt;, &lt;b:th&gt;</p>
	</b:column>	
</b:row>



<!--- Lets load up a query --->
<cfscript>
rc.qryData = QueryNew("Id,Icon,Album,Message,Score,Delete");


rc.qryData.AddRow([
	{id = 1, Icon = "asterisk",	Album="Appetite for Destruction", Message = "Welcome to the Jungle", Score = 50, Delete = 0},
	{id = 2, Icon = "glass", 	Album="Appetite for Destruction", Message = "Paradise City", 		Score = 25, Delete = 0},
	{id = 3, Icon = "signal",	Album="Use Your Illusion I", Message = "November Rain", 		Score = 60, Delete = 0},
	{id = 4, Icon = "download",	Album="Use Your Illusion I", Message = "Live and Let Die", 	Score = 80, Delete = 1},
	{id = 5, Icon = "download",	Album="G N' R Lies", Message = "Patience", 			Score = 90, Delete = 0},
	{id = 6, Icon = "flag",		Album="Use Your Illusion II",	Message = "Don't Cry", 			Score = 90, Delete = 0} // no comma
	]
	); 
</cfscript>


<h2>Introduction</h2>


<p>The most common for tables to be populated is via database query. This example manually loads data so that we don't have have a database.</p>

<p>Notice that there is a delete column. This will be used to control which rows get rendered</p>



<h2>b:table</h2>

<b:panel look="info" title="Attributes of &lt;b:table&gt;">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<b:th text="nowrap">Default value</b:th>
			<th>Description</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td>bordered</td>
			<td>true</td>
			<td>tables will have borders</td>
		</tr>
		<tr>
			<td>condensed</td>
			<td>true</td>
			<td>The table will have slightly smaller cell padding</td>
		</tr>
		<tr>
			<td>hover</td>
			<td>false</td>
			<td>Hover effect when mouse is over table</td>
		</tr>

		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML id.</td>
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
			<td>responsive</td>
			<td>true</td>
			<td>Make tables scroll horizontally on small devices (under 768px). When viewing on anything larger than 768px wide, you will not see any difference in these tables.</td>
		</tr>
		<tr>
			<td>stripped</td>
			<td>true</td>
			<td>Rows will alternate light and dark backgrounds</td>
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
	

<h2>b:tr</h2>
	
	
<b:panel look="info" title="Attributes of &lt;b:tr&gt;">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<b:th text="nowrap">Default value</b:th>
			<th>Description</th>
		</tr>	
	</thead>
	
	<tbody>

		<tr>
			<td>data-*</td>
			<td>(none)</td>
			<td>Pass through of HTML5 <code>data-*=</code> attributes.</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML id.</td>
		</tr>
		<tr>
			<td>look</td>
			<td>(none)</td>
			<td>This for contextual classes</td>
		</tr>
		<tr>
			<td>ng-*</td>
			<td>(none)</td>
			<td>Pass through of all AngularJS attributes</td>
		</tr>
		<tr>
			<td>on*</td>
			<td>(none)</td>
			<td>Pass through of all Mouse/Pointer events.</td>
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


<h2>b:th &amp; b:td</h2>

<b:panel look="info" title="Attributes of &lt;b:td&gt; &amp;  &lt;b:th&gt;">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<b:th text="nowrap">Default value</b:th>
			<th>Description</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td>binding</td>
			<td>(none)</td>
			<td>Reserved for future use</td>
		</tr>
		<tr>
			<td>hidden</td>
			<td>(none)</td>
			<td>Should this cell be hidden when the screen is small. Unlike Bootstrap hidden, if connect is hidden when sm then xs is hidden too.
				Likewise, if hidden on md, then sm and xs are hidden too. If the default Bootstrap behavior is desire, then use <code>styleClass=</code> instead.
			</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML id.</td>
		</tr>
		<tr>
			<td>data-*</td>
			<td>(none)</td>
			<td>Pass through of HTML5 <code>data-*=</code> attributes.</td>
		</tr>
		<tr>
			<td>look</td>
			<td>(none)</td>
			<td>This for contextual classes</td>
		</tr>
		<tr>
			<td>ng-*</td>
			<td>(none)</td>
			<td>Pass through of all AngularJS attributes</td>
		</tr>
		<tr>
			<td>on*</td>
			<td>(none)</td>
			<td>Pass through of all Mouse/Pointer events.</td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td>This is like a <code>&lt;cfif&gt;</code>, but only for content between tags. <b>Warning:</b> This will also process tags in between the start and end tags.</td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td>This is like <code>&lt;cfsilent&gt;</code>, but only for content between the tags</td>
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
			<td>text</td>
			<td>(none)</td>
			<td>This is text content classes. This takes care off alignment and wrapping.</td>
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


<b:table>
<thead> 
<tr>
	<th>ID</th>
	<th>Icon</th>
	<th>Album</th>
	<th>Message</th>
	<th>Score</th>
	<th></th> 
</tr>
</thead>	

<tbody>
<cfoutput query="rc.qryData">
	<b:tr rendered="#IIF(Delete, 0, 1)#">
		<b:td><b:badge value="#ID#" /></b:td>
		<b:td data-sort="#ID#"><b:icon name="#icon#" /></b:td>
		<b:td>#Album#</b:td>
		<b:td>#Message#</b:td>
		<b:td>#Score#</b:td>
		<b:td><b:commandLink action="###ID#" size="xs" look="primary">View #id#</b:commandLink></b:td>
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
	<b:th>Message</b:th>
	<b:th>Score</b:th>
	<b:th></b:th> 
</tr>
</thead>	

<tbody>
<cfoutput query="rc.qryData">
	<b:tr rendered="#IIF(Delete, 0, 1)#">
		<b:td hidden="md"><b:badge value="#ID#" /></b:td>
		<b:td hidden="sm" data-sort="#ID#"><b:icon name="#icon#" /></b:td>
		<b:td hidden="xs">#Album#</b:td>
		<b:td>#Message#</b:td>
		<b:td>#Score#</b:td>
		<b:td><b:commandLink action="###ID#" size="xs" look="primary">View #id#</b:commandLink></b:td>
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


<b:table styleClass="datatables">
<thead> 
<tr>
	<th>ID</th>
	<th>Icon</th>
	<th>Album</th>
	<th>Message</th>
	<th>Score</th>
	<th></th> 
</tr>
</thead>	

<tbody>
<cfoutput query="rc.qryData">
	<b:tr rendered="#IIF(Delete, 0, 1)#">
		<b:td><b:badge value="#ID#" /></b:td>
		<b:td data-sort="#ID#"><b:icon name="#icon#" /></b:td>
		<b:td>#Album#</b:td>
		<b:td>#Message#</b:td>
		<b:td>#Score#</b:td>
		<b:td><b:commandLink action="###ID#" size="xs" look="primary">View #id#</b:commandLink></b:td>
	</b:tr>
</cfoutput>	
</tbody>
</b:table>


<h3>cfdump of content</h3>


<cfdump var="#rc.qryData#" expand="no">


