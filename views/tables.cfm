
<cfimport prefix="b" taglib="../bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Tables</b:h1>
			<p>b:table, b:row, b:td, b:th</p>
		</b:column>	
	</b:row>
</div>



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
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML id.</td>
		</tr>
		<tr>
			<td>look</td>
			<td>true</td>
			<td>This for contextual classes</td>
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
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML id.</td>
		</tr>
		<tr>
			<td>look</td>
			<td>true</td>
			<td>This for contextual classes</td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td>This is like a <code>&lt;cfif&gt;</code>, but only for content between tags. <b>Warning:</b> This will also process tags inbetween the start and end tags.</td>
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
		<b:td><b:icon name="#icon#" /></b:td>
		<b:td>#Album#</b:td>
		<b:td>#Message#</b:td>
		<b:td>#Score#</b:td>
		<b:td><b:commandLink action="###ID#" size="xs" look="primary">View #id#</b:commandLink></b:td>
	</b:tr>
</cfoutput>	
</tbody>
</b:table>


<cfdump var="#rc.qryData#" expand="no">