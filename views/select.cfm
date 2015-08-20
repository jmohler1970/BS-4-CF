<cfimport prefix="b" taglib="../bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Select Family Examples</b:h1>
		<p>&lt;b:selectItem&gt;, &lt;b:selectItems&gt;</p>
		<p>&lt;b:selectManyCheckbox&gt;, &lt;selectManyMenu&gt;, &lt;selectOneMenu&gt;, &lt;selectOneRadio&gt;</p>
	</b:column>	
</b:row>




<b:h2>Introduction</b:h2>


<p> <code>b:selectManyMenu</code>, <code>b:selectOneMenu</code>, and <code>b:selectOneRadio</code> are each loaded with <code>b:selectItem</code> and <code>b:selectItems</code> By using the same loading process, it makes it possible to have uniform API of sorts for the front end.</p>

<h3>b:selectItem</h3>

<p>This loads data one part at a time</p>

<b:panel look="info" title="Attributes of &lt;b:selectItem&gt;">

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
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML disabled</td>
		</tr>
		<tr>
			<td>display</td>
			<td>(none)</td>
			<td>Pass through of content</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML id. </td>
		</tr>

		<tr>
			<td>look</td>
			<td>(none)</td>
			<td>For selectOneRadio, this will control the look and feel. This is done through Awesome Bootstrap Checkboxes</td>
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
			<td>selected</td>
			<td>false</td>
			<td>Is this selected on <code>&lt;option&gt;</code> or checked on <code>&lt;input type="radio"&gt;</code></td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td>Used on selectOneRadio</td>
		</tr>
		<tr>
			<td>value</td>
			<td>(none)</td>
			<td>Pass through of value</td>
		</tr>

	</tbody>
	</b:table>
</b:panel>


<h3>b:selectItems (yes with an s)</h3>

<p>This converts data from a query</p>

<b:panel look="info" title="Attributes of &lt;b:selectItem&gt;">

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
			<td>binding</td>
			<td>required</td>
			<td>Which database recordset column should be used for value</td>
		</tr>
		
		<tr>
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML disabled</td>
		</tr>
		<tr>
			<td>displayBinding</td>
			<td>required</td>
			<td>Which database recordset column should be for the display</td>
		</tr>
		<tr>
			<td>group</td>
			<td>(none)</td>
			<td>Reserved for future use. This will be used to group <code>cfoutput</code>s</td>
		</tr>
		<tr>
			<td>id</td>
			<td>auto</td>
			<td>Pass through of HTML id. For selectOneRadio, set this the "auto" so that an id can be created for <code>for</code> and <code>label</code>.</td>
		</tr>
		<tr>
			<td>look</td>
			<td>(none)</td>
			<td>For selectOneRadio, this will control the look and feel. This is done through Awesome Bootstrap Checkboxes</td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td>This like a <code>&lt;cfif&gt;</code></td>
		</tr>
		<tr>
			<td>query</td>
			<td>required</td>
			<td>This the recordset that will be processed</td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td>This is like <code>&lt;cfsilent&gt;</code></td>
		</tr>
		<tr>
			<td>selected</td>
			<td>false</td>
			<td>Is this selected on <code>&lt;option&gt;</code> or checked on <code>&lt;input type="radio"&gt;</code></td>
		</tr>
		<tr>
			<td>selectedValue</td>
			<td>(none)</td>
			<td>This can be either a single value or an array. If the binding value matches this, then selected is set to true</td>
		</tr>
		<tr>
			<td>tooltipBinding</td>
			<td>(none)</td>
			<td>Used on selectOneRadio</td>
		</tr>
	</tbody>
	</b:table>
</b:panel>


<h3>b:buttonGroup</h3>

<b:commandLink action="?view=buttonGroups" value="See button groups" />


<h3>b:selectBooleanCheckbox</h3>

<b:commandLink action="?view=awesomecheckbox" value="See Awesome Bootstrap Checkboxes" />

<h3>b:selectManyMenu</h3>



<h3>b:selectOneMenu</h3>

<p>This generates a normal <code>&lt;select&gt;</code>
	
<p>This tag does not have selectedValue or selected index. Those belong to <code>&lt;selectItem&gt;</code> and <code>&lt;selectItems&gt;</code>	
	
<p>You can also create content between the tags and that will also be apart of the select one menu.	

<b:panel look="info" title="Attributes of &lt;b:selectOneRadio&gt;">
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
			<td>data-*</td>
			<td>(none)</td>
			<td>Pass through of HTML5 <code>data-*=</code> attributes.</td>
		</tr>
		<tr>
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML disabled. If the string "disabled" is passed in, it will be treated as true.</td>
		</tr>
		<tr>
			<td>fieldSize</td>
			<td>(none)</td>
			<td>Bootstrap control size</td>
		</tr>
		<tr>
			<td>help</td>
			<td>(none)</td>
			<td>Bootstrap help text below control</td>
		</tr>
		
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML id.</td>
		</tr>
		<tr>
			<td>name</td>
			<td>required</td>
			<td>All the check boxes get the same name</td>
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
			<td>readonly</td>
			<td>false</td>
			<td>Pass through of HTML readonly. If the string "readonly" is passed in, it will be treated as true/</td>
		</tr>
		<tr>
			<td>required</td>
			<td>false</td>
			<td>Pass through of HTML required. If the string "required" is passed in, it will be treated as true</td>
		</tr>		
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td>This is like <code>&lt;cfsilent&gt;</code></td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of <code>title=</code></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>

<h3>b:selectOneRadio</h3>

<b:panel look="info" title="Attributes of &lt;b:selectOneRadio&gt;">

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
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML disabled. If the string "disabled" is passed in, it will be treated as true.</td>
		</tr>
		<tr>
			<td>inline</td>
			<td>false</td>
			<td>Show all radio buttons on the same row</td>
		</tr>
		<tr>
			<td>name</td>
			<td>required</td>
			<td>All the check boxes get the same name</td>
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
			<td>square</td>
			<td>false</td>
			<td>Make radio button look square like a checkbox</td>
		</tr>

	</tbody>
	</b:table>
</b:panel>


<p>These are enhanced with Awesome Bootstrap Radio</p>


<b:selectOneRadio name="myRadio">
	<b:selectItem value="1" display="Default"	id="auto"	selected="true" />
	<b:selectItem value="1" display="Primary"	id="auto"	look="primary" />
	<b:selectItem value="1" display="Info"		id="auto"	look="info" />
	<b:selectItem value="1" display="Success"	id="auto"	look="success" />
	<b:selectItem value="1" display="Warning"	id="auto"	look="warning" />
	<b:selectItem value="1" display="Danger"	id="auto"	look="danger" />
</b:selectOneRadio>


<p>Now with square radio buttons</p>

<b:selectOneRadio name="myRadio1" square="true" inline="true">
	<b:selectItem value="1" display="Default"	id="auto"	selected="true" />
	<b:selectItem value="1" display="Primary"	id="auto"	look="primary" />
	<b:selectItem value="1" display="Info"		id="auto"	look="info" />
	<b:selectItem value="1" display="Success"	id="auto"	look="success" />
	<b:selectItem value="1" display="Warning"	id="auto"	look="warning" />
	<b:selectItem value="1" display="Danger"	id="auto"	look="danger" />
</b:selectOneRadio>



<h2>Examples</h2>

<!--- Lets load up a query --->
<cfscript>
rc.qryData = QueryNew("Display, Value, Selected, Icon");


rc.qryData.AddRow([
	{value = 1, Icon = "asterisk",	Display="Appetite for Destruction",	Selected = 0},
	{value = 2, Icon = "glass", 		Display="Appetite for Destruction", 	Selected = 0},
	{value = 3, Icon = "signal",		Display="Use Your Illusion I", 	 	Selected = 0},
	{value = 4, Icon = "download",	Display="Use Your Illusion I", 	 	Selected = 1},
	{value = 5, Icon = "download",	Display="G N' R Lies",  				Selected = 0},
	{value = 6, Icon = "flag",		Display="Use Your Illusion II",		Selected = 0} // no comma
	]
	); 
</cfscript>



<b:table>
<thead>
	<tr>
		<th><code>size="lg"</code></th>
		<th>Default</th>
		<th><code>size="sm"</code></th>
		<th>Multiple</th>
	</tr>
</thead>
<tbody>
<tr>
	<td>
		<b:selectOneMenu name="select" 	fieldSize="lg" >
			<b:selectItem display="Manually Created Value" />
			<b:selectItems query="#rc.qryData#" selected="4" />
		</b:selectOneMenu>
	</td>

	<td>
		<b:selectOneMenu name="select">
			<b:selectItem display="Manually Created Value" />
			<b:selectItems query="#rc.qryData#" selected="2" />
		</b:selectOneMenu>
	</td>
	<td>
		<b:selectOneMenu name="select" 	fieldSize="sm"	>
			<b:selectItem display="Manually Created Value" />
			<b:selectItems query="#rc.qryData#" selected="5" />
		</b:selectOneMenu>
	</td>
	<td>
		<cfset selected = [3,4,5]>
		<b:selectManyMenu name="select" help="Use Ctrl to select multiple items">
			<b:selectItem display="Manually Created Value" />
			<b:selectItems query="#rc.qryData#" selectedValue="#selected#" />
		</b:selectManyMenu>
	</td>
</tr>
</tbody>
</b:table>


