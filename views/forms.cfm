
<cfimport prefix="b" taglib="../bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Forms Examples</b:h1>
			<p>View code for details.</p>
		</b:column>	
	</b:row>
</div>




<b:h2>Introduction</b:h2>

<p>BS-4-CF puts only a few wrappers around form elements. The reason is simple. There are simply too many form libraries out there to try to support. Hence. only the basics are included.</p>

<b:row>

	<b:column span="9">



<b:h2>b:formGroup<a id="formgroup"></a></b:h2>

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
			<td>Pass through of HTML id. For selectOneRadio, set this the "auto" so that an id can be created for form and label.</td>
		</tr>

		<tr>
			<td>look</td>
			<td>(none)</td>
			<td>For selectOneRadio, this will control the look and feel. This is done through Awesome Bootstrap Checkboxs</td>
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


<p>Individual form controls automatically receive some global styling. All textual <code>&lt;input&gt;</code>, <code>&lt;textarea&gt;</code>, and <code>&lt;select&gt;</code> elements with <code>.form-control</code> are set to <code>width: 100%;</code> by default. Wrap labels and controls in <code>b:form-group</code> for optimum spacing.</p>



<b:well>

	<form>
		<b:formGroup>
			<label for="exampleInputEmail1">Email address</label>
			<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
		</b:formGroup>
		
		<b:formGroup>
			<label for="exampleInputPassword1">Password</label>
			<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
		</b:formGroup>
		
	  
	  	<b:formGroup>
	  		<label for="exampleInputFile">File input</label>
	  		<input type="file" id="exampleInputFile">
	  		<p class="help-block">Example block-level help text here.</p>
	  	</b:formGroup>
	
	  	<!--- This one won't be showing up --->
	  	<b:formGroup rendered="false">
	  		<label for="exampleInputFile">File input</label>
	  		<input type="file" id="exampleInputFile">
	  		<p class="help-block">Example block-level help text here.</p>
	  	</b:formGroup>
	
	
	  	<div class="checkbox">
	  		<label>
	  			<input type="checkbox"> Check me out
	  		</label>
	  	</div>
	  
		<b:commandButton value="Submit" />
	</form>

</b:well>




<h2>Select Family</h2>

<p> <code>b:selectManyMenu</code>, <code>b:selectOneMenu</code>, and <code>b:selectOneRadio</code> are each loaded with <code>b:selectItem</code> and <code>b:selectItems</code> By using the same loading process, it makes it possible to have uniform API of sorts for the front end.</p>

<h3>selectItem</h3>

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
			<td>Pass through of HTML id. For selectOneRadio, set this the "auto" so that an id can be created for form and label.</td>
		</tr>

		<tr>
			<td>look</td>
			<td>(none)</td>
			<td>For selectOneRadio, this will control the look and feel. This is done through Awesome Bootstrap Checkboxs</td>
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


<h3>selectItems (yes with an s)</h3>

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
			<td>Reserved for future use. This will be used to group cfoutputs</td>
		</tr>
		<tr>
			<td>id</td>
			<td>auto</td>
			<td>Pass through of HTML id. For selectOneRadio, set this the "auto" so that an id can be created for form and label.</td>
		</tr>
		<tr>
			<td>look</td>
			<td>(none)</td>
			<td>For selectOneRadio, this will control the look and feel. This is done through Awesome Bootstrap Checkboxs</td>
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




<h3>selectBooleanCheckbox</h3>


<h3>selectManyMenu</h3>



<h3>selectOneMenu</h3>



<h3>selectOneRadio</h3>

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



<h2>Conversion Summary</h2>
<p>Supported tags include</p>

<b:panel look="info" title="Conversion Chart">

<b:table bordered="true" condensed="false">
<b:tr>
	<b:th>Tag</b:th>
	<b:th>HTML equiv</b:th>
	<b:th>Notes</b:th>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:button value="Save"&gt;</code></b:td>
	<b:td><code>&lt;button type="button" class="btn"&gt;Save&lt;/button&gt;</code></b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:commandButton value="Save"&gt;</code></b:td>
	<b:td><code>&lt;button type="submit" class="btn"&gt;Save&lt;/button&gt;</code></b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:fieldset legend="My Legend"&gt;</code></b:td>
	<b:td><code>&lt;fieldset&gt;<br />&nbsp; &lt;legend&gt;My Legend&lt;/legend&gt;</code></b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:formGroup&gt;</code></b:td>
	<b:td><code>&lt;div class="form-group"&gt;</code></b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:selectItem&gt;</code></b:td>
	<b:td><code>&lt;option&gt;</code></b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:selectItems query="#rc.qryData#"&gt;</code></b:td>
	<b:td>
		<code>&lt;cfoutput query="rc.qryData"&gt;<br />&nbsp; &lt;option&gt;</code>
		<br />
		OR
		<br />
		<code>&lt;cfselect&gt;</code>
	</b:td>
	<b:td>The # is required for the BS-4-CF version. It is not present in the original. You still need to wrap this in either selectOneMenu or SelectMultiMenu</b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:selectOneMenu&gt;</code></b:td>
	<b:td><code>&lt;select type="form-control"&gt;</code>
	<br />
	OR
	<br />
	<code>&lt;div class="col-lg-*"&gt;<br />&nbsp; &lt;select type="form-control"&gt;</code>
	</b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:selectManyMenu&gt;</code></b:td>
	<b:td><code>&lt;select class="form-control" multiple="multiple"&gt;</code></b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:selectManyMenu styleClass="select2"&gt;</code></b:td>
	<b:td><code>&lt;select class="form-control select2" multiple="multiple"&gt;</code></b:td>
	<b:td>Select2 is a great tool for making multi selects much smarter</b:td>
</b:tr>


</b:table>




<p>Note: <code>&lt;b:label&gt;</code> refers to Bootstrap labels NOT the label tag that goes along with form fields</p>


</b:panel>


<h2>Awesome Bootstrap Checkboxes</h2>


<b:blockquote>
	<p>Font Awesome Bootstrap Checkboxes & Radios plugin. Pure css way to make inputs look prettier. No javascript!</p>

	<a href="https://github.com/flatlogic/awesome-bootstrap-checkbox">https://github.com/flatlogic/awesome-bootstrap-checkbox</a>
</b:blockquote>


<p>We have included wrappers around this library for 2 reasons</p>

<ol>
	<li>They have done a very good job making checkboxes and radio buttons look great</li>
	<li>By abstracting checkboxes and radio buttons, it will be easy to swap in new libraries when that day comes</li>

</ol>




<b:table>
<thead>
   <tr>
       <th>Checkbox</th>
       <th>Checkbox round</th>
       <th><code>look</code> attribute</th>
       <th>Description</th>
   </tr>
</thead>
<tbody>
   <tr>
       <td><b:selectBooleanCheckbox checked="true" name="myc" id="auto">Checkbox</b:selectBooleanCheckbox></td>
       <td><b:selectBooleanCheckbox circle="true" id="auto" checked="true">Checkbox</b:selectBooleanCheckbox></td>
     
       <td>missing</td>
       <td>Standard gray button with gradient</td>
   </tr>

   <tr>
       <td><b:selectBooleanCheckbox	look="primary" 			id="auto" checked="true">Checkbox</b:selectBooleanCheckbox></td>
       <td><b:selectBooleanCheckbox	look="primary" circle="true" name="myc" checked="true"id="auto">Checkbox</b:selectBooleanCheckbox></td>
       <td><code>look="primary"</code></td>
       <td>Provides extra visual weight and identifies the primary action in a set of buttons</td>
   </tr>
   
   <tr>
       <td><b:selectBooleanCheckbox	look="info" checked="true" id="auto">Checkbox</b:selectBooleanCheckbox></td>
       <td><b:selectBooleanCheckbox	look="info" circle="true" 	name="myc" checked="true" id="auto">Checkbox</b:selectBooleanCheckbox></td>
       <td><code>look="info"</code></td>
       <td>Used as an alternative to the default styles</td>
   </tr>

   <tr>
       <td><b:selectBooleanCheckbox	look="success" checked="true" id="auto">Checkbox</b:selectBooleanCheckbox></td>
       <td><b:selectBooleanCheckbox	look="success" circle="true"	name="myc" checked="true" id="auto">Checkbox</b:selectBooleanCheckbox></td>
       <td><code>look="success"</code></td>
       <td>Indicates a successful or positive action</td>
   </tr>
   
   <tr>
       <td><b:selectBooleanCheckbox	look="warning" checked="true" id="auto">Checkbox</b:selectBooleanCheckbox></td>
       <td><b:selectBooleanCheckbox	look="warning" circle="true"	name="myc" id="auto" checked="true">Checkbox</b:selectBooleanCheckbox></td>
       <td><code>look="warning"</code></td>
       <td>Indicates caution should be taken with this action</td>
   </tr>
   
      <tr>
       <td><b:selectBooleanCheckbox	look="danger" checked="true" id="auto">Checkbox</b:selectBooleanCheckbox></td>
       <td><b:selectBooleanCheckbox	look="danger" circle="true" id="auto" checked="true">Checkbox</b:selectBooleanCheckbox></td>
       <td><code>look="danger"</code></td>
       <td>Indicates a dangerous or potentially negative action</td>
   </tr>
</tbody>
</b:table>



	</b:column>
	
	
	<b:column span="3">
	
		<nav class="affix-top">

			<ul class="nav">
				<li><a href="#formgroup">b:formGroup</a></li>
				<li><a href="#fieldset">b:fieldset</a></li>
				<li><a href="#selectitem">b:selectItem</a></li>
				<li><a href="#selectitems">b:selectItems</a></li>
				<li><a href="#selectmanymenu">b:selectManyMenu</a></li>
				<li><a href="#selectonemenu">b:selectOneMenu</a></li>
				<li><a href="#selectoneradio">b:selectOneRadio</a></li>
				<li><a href="#conversion">Conversion Summary</a></li>
			</ul>	

		</nav>

	</b:column>
</b:row>
	
	




