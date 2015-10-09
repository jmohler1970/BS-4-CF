<cfimport prefix="b" taglib="../_bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Select Family Examples</b:h1>
		<p>&lt;b:selectItem&gt;, &lt;b:selectItems&gt;</p>
		<p>&lt;b:selectManyCheckbox&gt;, &lt;selectManyMenu&gt;, &lt;selectOneMenu&gt;, &lt;selectOneRadio&gt;</p>
	</b:column>	
</b:row>




<b:h1 key="Introduction" />



<p><code>b:selectManyCheckbox</code>, <code>b:selectManyMenu</code>, <code>b:selectOneMenu</code>, and <code>b:selectOneRadio</code> are all similar selection mechanisms. They can be loaded with</p>

<ul>
	<li><code>b:selectItem</code> which builds them one at a time.</li>
	<li><code>b:selectItems</code> which converts a recordset into the internal format</li>
	<li>Direct feed of a recordset into the query</li>
</ul>
	
<p>By using the same loading process, it makes it possible to have uniform API of sorts for the front end.</p>


<b:h2>Loading data</b:h2>

<h3>b:selectItem</h3>

<p>This loads data one part at a time</p>

<b:panel look="info" title="Attributes of <b:selectItem>">

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
			<td></td>
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML disabled</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td></td>
			<td>display</td>
			<td>(none)</td>
			<td>Pass through of content</td>
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
			<td><b:label>Bootstrap</b:label></td>
			<td>look</td>
			<td>(none)</td>
			<td>For selectOneRadio, this will control the look and feel. This is done through Awesome Bootstrap Checkboxes</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td></td>
			<td>processed</td>
			<td>true</td>
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
			<td>selected</td>
			<td>false</td>
			<td>Is this selected on <code>&lt;option&gt;</code> or checked on <code>&lt;input type="radio"&gt;</code></td>
			<td>Must evaluate to boolean</td>
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
		<tr>
			<td></td>
			<td>value</td>
			<td>(none)</td>
			<td>Pass through of value</td>
			<td><code>encodeForHTML()</code></td>
		</tr>

	</tbody>
	</b:table>
</b:panel>


<h3>b:selectItems (yes with an s)</h3>

<p>This converts data from a query</p>

<b:panel look="info" title="Attributes of <b:selectItem>">

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
			<td>binding</td>
			<td>required</td>
			<td>Which database recordset column should be used for value</td>
			<td>N/A</td>
		</tr>
		
		<tr>
			<td></td>
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML disabled</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td></td>
			<td>displayBinding</td>
			<td>required</td>
			<td>Which database recordset column should be for the display</td>
			<td>N/A</td>
		</tr>
		<tr>
			<td></td>
			<td>group</td>
			<td>(none)</td>
			<td>Reserved for future use. This will be used to group <code>cfoutput</code>s</td>
			<td>N/A</td>
		</tr>
		<tr>
			<td></td>
			<td>id</td>
			<td>(none)</td>
			<td><a href="~/common">See Common Features</a>  For selectOneRadio, set this the "auto" so that an id can be created for <code>for</code> and <code>label</code>.</td>
			<td></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>look</td>
			<td>(none)</td>
			<td>For selectOneRadio, this will control the look and feel. This is done through Awesome Bootstrap Checkboxes</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td></td>
			<td>processed</td>
			<td>true</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>query</td>
			<td>required</td>
			<td>This the recordset that will be processed</td>
			<td>N/A</td>
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
			<td>selected</td>
			<td>false</td>
			<td>Is this selected on <code>&lt;option&gt;</code> or checked on <code>&lt;input type="radio"&gt;</code></td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td></td>
			<td>selectedValue</td>
			<td>(none)</td>
			<td>This can be either a single value or an array. If the binding value matches this, then selected is set to true</td>
			<td>N/A</td>
		</tr>
		<tr>
			<td></td>
			<td>tooltipBinding</td>
			<td>(none)</td>
			<td>Used on selectOneRadio</td>
			<td>N/A</td>
		</tr>
	</tbody>
	</b:table>
</b:panel>

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



<h3>Direct feed</h3>




<p>This taps directly into the internal format</p>

disabled,display,group,id,look,value,selected,tooltip

<b:panel title="Columns of <attributes.qryOption>">

	<b:table class="datatables">
	<thead>
		<tr>
			<th></th>
			<th>Column</th>
			<th>Default value</th>
			<b:th key="plugin_desc" />
			<th>Sanitized</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td></td>
			<td>binding</td>
			<td>required</td>
			<td>Which database recordset column should be used for value</td>
			<td>N/A</td>
		</tr>
		
		<tr>
			<td></td>
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML disabled</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td></td>
			<td>displayBinding</td>
			<td>required</td>
			<td>Which database recordset column should be for the display</td>
			<td>N/A</td>
		</tr>
		<tr>
			<td></td>
			<td>group</td>
			<td>(none)</td>
			<td>Reserved for future use. This will be used to group <code>cfoutput</code>s</td>
			<td>N/A</td>
		</tr>
		<tr>
			<td></td>
			<td>id</td>
			<td>auto</td>
			<td>Pass through of HTML id. For selectOneRadio, set this the "auto" so that an id can be created for <code>for</code> and <code>label</code>.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
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
			<td>For selectOneRadio, this will control the look and feel. This is done through Awesome Bootstrap Checkboxes</td>
			<td><code>encodeForHTMLAttribute()</code></td>
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
			<td>query</td>
			<td>required</td>
			<td>This the recordset that will be processed</td>
			<td>N/A</td>
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
			<td>selected</td>
			<td>false</td>
			<td>Is this selected on <code>&lt;option&gt;</code> or checked on <code>&lt;input type="radio"&gt;</code></td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td></td>
			<td>selectedValue</td>
			<td>(none)</td>
			<td>This can be either a single value or an array. If the binding value matches this, then selected is set to true</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>throwOnError</td>
			<td>false</td>
			<b:td key="common" />
			<td></td>
		</tr>
		
		<tr>
			<td></td>
			<td>tooltipBinding</td>
			<td>(none)</td>
			<td>Used on selectOneRadio</td>
			<td>N/A</td>
		</tr>
	</tbody>
	</b:table>
</b:panel>




<h2>Using the data</h2>

<p>&nbsp;</p>
<h3>b:buttonGroup</h3>

<p>Button groups can also use selectItems. This is because a button group could be a series of radio buttons.</p>

<b:commandLink action="~/docs/buttonGroups" value="See button groups" />

<p>&nbsp;</p>
<h3>b:selectBooleanCheckbox</h3>

<b:commandLink action="~/docs/awesomecheckbox" value="See Awesome Bootstrap Checkboxes" />


<p>&nbsp;</p>
<h3>b:selectManyCheckbox</h3>

<b:panel look="info" title="Attributes of <b:selectManyCheckbox>">

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
			<td></td>
			<td>circle</td>
			<td>false</td>
			<td>Make checkbox look round like a radio</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td></td>
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML disabled. If the string "disabled" is passed in, it will be treated as true.</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>inline</td>
			<td>false</td>
			<td>Show all radio buttons on the same row</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>isSafeHTML</td>
			<td>false</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>name</td>
			<td>required</td>
			<td>All the check boxes get the same name</td>
			<td><code>encodeForHTMLAttribute()</code></td>
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
			<td><b:label look="info">Antisamy</b:label></td>
			<td>throwOnError</td>
			<td>false</td>
			<b:td key="common" />
			<td></td>
		</tr>
		

	</tbody>
	</b:table>
</b:panel>


<b:h4>Example</b:h4>

<b:selectManyCheckbox name="select">
	<b:selectItem display="Manually Created Value" />
	<b:selectItems query="#rc.qryData#" selected="2" />
</b:selectManyCheckbox>


<p>&nbsp;</p>
<h3>b:selectManyMenu</h3>

<p>The <code>b:selectManyMenu</code> is not expected to be used directly. Most browsers render this in a way that is way too difficult to use.
	It is expected that a tool like select2 <a href="https://select2.github.io/" target="_blank">https://select2.github.io/</a></p>

<b:panel look="info" title="Attributes of <b:selectManyCheckbox>">

	<b:table>
	<thead>
		<tr>
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
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML disabled. If the string "disabled" is passed in, it will be treated as true.</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>fieldsize</td>
			<td>(none)</td>
			<td>How much of form control does this span</td>
			<td><code>isNumeric()</code></td>
		</tr>
		<tr>
			<td>help</td>
			<td>(none)</td>
			<td>Bootstrap help text below control</td>
			<td><code>encodeForHTML()</code></td>
		</tr>
		
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML id.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>name</td>
			<td>required</td>
			<td>All the check boxes get the same name</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>ng-*</td>
			<td>(none)</td>
			<td>Pass through of all AngularJS attributes</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>on*</td>
			<td>(none)</td>
			<td>Pass through of all Mouse/Pointer events.</td>
			<td><b:label look="danger">No</b:label></td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td>This like a <code>&lt;cfif&gt;</code></td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td>This is like <code>&lt;cfsilent&gt;</code></td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>span</td>
			<td>(none)</td>
			<td>Pass though of <code>title=</code></td>
		</tr>
		<tr>
			<td>style</td>
			<td>(none)</td>
			<td>how many Bootstrap columns does this take</td>
			<td><code>encodeForCSS()</code></td>
		</tr>
		<tr>
			<td>styleClass</td>
			<td>(none)</td>
			<td>Pass though of <code>class=</code></td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of <code>title=</code></td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		
	</tbody>
	</b:table>
</b:panel>


<b:h4>Example</b:h4>

<form class="form-horizontal">
<b:formgroup>
	<label class="col-md-3 control-label">Default look and feel</label>
	
	<b:column span="9">
		<b:selectManyMenu name="select">
			<b:selectItem display="Manually Created Value" />
			<b:selectItems query="#rc.qryData#" selected="2" />
		</b:selectManyMenu>
	</b:column>
</b:formgroup>		

<b:formgroup>
	<label class="col-md-3 control-label">With Select2</label>
	
	<b:column span="9">
		<b:selectManyMenu name="select" styleClass="select2">
			<b:selectItem display="Manually Created Value" />
			<b:selectItems query="#rc.qryData#" selected="2" />
		</b:selectManyMenu>
	</b:column>
</b:formgroup>
</form>


<p>&nbsp;</p>
<h3>b:selectOneMenu</h3>

<p>This generates a normal <code>&lt;select&gt;</code>
	
<p>This tag does not have selectedValue or selected index. Those belong to <code>&lt;selectItem&gt;</code> and <code>&lt;selectItems&gt;</code>	
	
<p>You can also create content between the tags and that will also be apart of the select one menu.	

<b:panel look="info" title="Attributes of <b:selectOneRadio>">
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
			<td></td>
			<td>data-*</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML disabled.</td>
			<td>must evaluate to boolean. If the string "disabled" is passed in, it will be treated as true.</td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>fieldSize</td>
			<td>(none)</td>
			<td>Bootstrap control size</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>help</td>
			<td>(none)</td>
			<td>Bootstrap help text below control</td>
			<td><code>encodeForHTML()</code></td>
		</tr>
		
		<tr>
			<td></td>
			<td>id</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>name</td>
			<td>required</td>
			<td>All the check boxes get the same name</td>
			<td></td>
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
			<td></td>
			<td>processed</td>
			<td>true</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>readonly</td>
			<td>false</td>
			<td>Pass through of HTML readonly. If the string "readonly" is passed in, it will be treated as true/</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td></td>
			<td>required</td>
			<td>false</td>
			<td>Pass through of HTML required. If the string "required" is passed in, it will be treated as true</td>
			<td>Must evaluate to boolean</td>
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


<h3>Example</h3>
	
<form class="form-horizontal">
<b:formgroup>
	<label class="col-md-3 control-label">Default look and feel</label>
	
	<b:column colmd="9">	

		<b:selectOneMenu name="select">
			<b:selectItem display="Manually Created Value" />
			<b:selectItems query="#rc.qryData#" selected="2" />
		</b:selectOneMenu>
	</b:column>
</b:formgroup>

<b:formgroup>
	<label class="col-md-3 control-label">With Select2</label>
	
	<b:column colmd="9">	
		<b:selectOneMenu name="select" styleClass="select2">
			<b:selectItem display="Manually Created Value" />
			<b:selectItems query="#rc.qryData#" selected="2" />
		</b:selectOneMenu>
	</b:column>
</b:formgroup>
</form>		




<p>&nbsp;</p>
<h3>b:selectOneRadio</h3>

<b:panel look="info" title="Attributes of <b:selectOneRadio>">

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
			<td></td>
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML disabled. If the string "disabled" is passed in, it will be treated as true.</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td></td>
			<td>inline</td>
			<td>false</td>
			<td>Show all radio buttons on the same row</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>isSafeHTML</td>
			<td>false</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>name</td>
			<td>required</td>
			<td>All the check boxes get the same name</td>
			<td>Yes</td>
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
			<td>square</td>
			<td>false</td>
			<td>Make radio button look square like a checkbox</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>throwOnError</td>
			<td>false</td>
			<b:td key="common" />
			<td></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>


<p>These are enhanced with Awesome Bootstrap Radio. This are inside of a form</p>


<form class="form-horizontal">
<b:formgroup>
	<label class="col-lg-3 control-label">Default vertical</label>
	
	<b:column span="9">
		<b:selectOneRadio name="myRadio">
			<b:selectItem value="1" display="Default"	id="auto"	selected="true" />
			<b:selectItem value="1" display="Primary"	id="auto"	look="primary" />
			<b:selectItem value="1" display="Info"		id="auto"	look="info" />
			<b:selectItem value="1" display="Success"	id="auto"	look="success" />
			<b:selectItem value="1" display="Warning"	id="auto"	look="warning" />
			<b:selectItem value="1" display="Danger"	id="auto"	look="danger" />
		</b:selectOneRadio>
	</b:column>
</b:formgroup>


<b:formgroup>
	<label class="col-lg-3 control-label">Horizontal</label>
	<b:column span="9">
		<b:selectOneRadio name="myRadio2" inline="true">
			<b:selectItem value="1" display="Default"	id="auto" />
			<b:selectItem value="1" display="Primary"	id="auto"	look="primary" />
			<b:selectItem value="1" display="Info"		id="auto"	selected="true" look="info" />
			<b:selectItem value="1" display="Success"	id="auto"	look="success" />
			<b:selectItem value="1" display="Warning"	id="auto"	look="warning" />
			<b:selectItem value="1" display="Danger"	id="auto"	look="danger" />
		</b:selectOneRadio>
	</b:column>
</b:formgroup>

<b:formgroup>
	<b:column span="9" offset="3">
		<b:commandButton value="Save" look="primary" />
	</b:column>	
</b:formgroup>
</form>


<h3>Look set across all</h3>
<p>These are all set to info</p>

<b:selectOneRadio name="myRadio3" look="info">
	<b:selectItem value="C" display="Cat"		id="auto"	selected="true" />
	<b:selectItem value="D" display="Dog"		id="auto"	/>
	<b:selectItem value="B" display="Bird"		id="auto"	/>
	<b:selectItem value="F" display="Fish"		id="auto"	/>
	<b:selectItem value="R" display="Rat"		id="auto"	/>
	<b:selectItem value="H" display="Hamster"	id="auto"	/>
</b:selectOneRadio>


<h3>Square Radio</h3>

<p>Now with square radio buttons. (Work in progress, doesn't quite work right)</p>

<b:selectOneRadio name="myRadio1" square="true" inline="true">
	<b:selectItem value="1" display="Default"	id="auto"	selected="true" />
	<b:selectItem value="1" display="Primary"	id="auto"	look="primary" />
	<b:selectItem value="1" display="Info"		id="auto"	look="info" />
	<b:selectItem value="1" display="Success"	id="auto"	look="success" />
	<b:selectItem value="1" display="Warning"	id="auto"	look="warning" />
	<b:selectItem value="1" display="Danger"	id="auto"	look="danger" />
</b:selectOneRadio>




<h3>Yet more examples</h3>
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


