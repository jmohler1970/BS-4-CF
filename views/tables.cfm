
<cfimport prefix="b" taglib="../bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Table Examples</b:h1>
			<p>View code for details.</p>
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


<cfdump var="#rc.qryData#">
	


<h2>Now with tables</h2>

<pre>
&lt;b:table&gt;
&lt;thead&gt; 
&lt;tr&gt;
	&lt;th&gt;ID&lt;/th&gt;
	&lt;th&gt;Icon&lt;/th&gt;
	&lt;th&gt;Album&lt;/th&gt;
	&lt;th&gt;Message&lt;/th&gt;
	&lt;th&gt;Score&lt;/th&gt;
	&lt;th&gt;&lt;/th&gt; 
&lt;/tr&gt;
&lt;/thead&gt;	

&lt;tbody&gt;
&lt;cfoutput query=&quot;rc.qryData&quot;&gt;
	&lt;b:tr rendered=&quot;#IIF(Delete, 0, 1)#&quot;&gt;
		&lt;b:td&gt;&lt;b:badge value=&quot;#ID#&quot; /&gt;&lt;/b:td&gt;
		&lt;b:td&gt;&lt;b:icon name=&quot;#icon#&quot; /&gt;&lt;/b:td&gt;
		&lt;b:td&gt;#Album#&lt;/b:td&gt;
		&lt;b:td&gt;#Message#&lt;/b:td&gt;
		&lt;b:td&gt;#Score#&lt;/b:td&gt;
		&lt;b:td&gt;&lt;b:a href=&quot;###ID#&quot; size=&quot;xs&quot; look=&quot;primary&quot;&gt;View #id#&lt;/b:a&gt;&lt;/b:td&gt;
	&lt;/b:tr&gt;
&lt;/cfoutput&gt;	

&lt;/tbody&gt;
&lt;/b:table&gt;
	
</pre>	


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
		<b:td><b:a href="###ID#" size="xs" look="primary">View #id#</b:a></b:td>
	</b:tr>
</cfoutput>	
</tbody>
</b:table>


