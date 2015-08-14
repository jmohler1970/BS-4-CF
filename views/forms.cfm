
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

Supported tags include



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
	<b:td text="nowrap"><code>&lt;b:selectItems query="#rc.qryData#"&gt;</code></b:td>
	<b:td text="nowrap">
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
	<b:td><code>&lt;b:selectMultiMenu&gt;</code></b:td>
	<b:td text="nowrap"><code>&lt;select class="form-control" multiple="multiple"&gt;</code></b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td text="nowrap"><code>&lt;b:selectMultiMenu styleClass="select2"&gt;</code></b:td>
	<b:td text="nowrap"><code>&lt;select class="form-control select2" multiple="multiple"&gt;</code></b:td>
	<b:td>Select2 is a great tool for making multi selects much smarter</b:td>
</b:tr>


</b:table>




<p>Note: <code>&lt;b:label&gt;</code> refers to Bootstrap labels NOT the label tag that goes along with form fields</p>


<b:h2>Basic example</b:h2>

Individual form controls automatically receive some global styling. All textual <code>&lt;input&gt;</code>, <code>&lt;textarea&gt;</code>, and <code>&lt;select&gt;</code> elements with <code>.form-control</code> are set to <code>width: 100%;</code> by default. Wrap labels and controls in <code>b:form-group</code> for optimum spacing.

<pre>
&lt;form&gt;
	&lt;b:formGroup&gt;
		&lt;label for=&quot;exampleInputEmail1&quot;&gt;Email address&lt;/label&gt;
		&lt;input type=&quot;email&quot; class=&quot;form-control&quot; id=&quot;exampleInputEmail1&quot; placeholder=&quot;Email&quot;&gt;
	&lt;/b:formGroup&gt;
	
	&lt;b:formGroup&gt;
		&lt;label for=&quot;exampleInputPassword1&quot;&gt;Password&lt;/label&gt;
		&lt;input type=&quot;password&quot; class=&quot;form-control&quot; id=&quot;exampleInputPassword1&quot; placeholder=&quot;Password&quot;&gt;
	&lt;/b:formGroup&gt;
	
  
  	&lt;b:formGroup&gt;
  		&lt;label for=&quot;exampleInputFile&quot;&gt;File input&lt;/label&gt;
  		&lt;input type=&quot;file&quot; id=&quot;exampleInputFile&quot;&gt;
  		&lt;p class=&quot;help-block&quot;&gt;Example block-level help text here.&lt;/p&gt;
  	&lt;/b:formGroup&gt;

  	&lt;!--- This one won't be showing up ---&gt;
  	&lt;b:formGroup rendered=&quot;false&quot;&gt;
  		&lt;label for=&quot;exampleInputFile&quot;&gt;File input&lt;/label&gt;
  		&lt;input type=&quot;file&quot; id=&quot;exampleInputFile&quot;&gt;
  		&lt;p class=&quot;help-block&quot;&gt;Example block-level help text here.&lt;/p&gt;
  	&lt;/b:formGroup&gt;


  	&lt;div class=&quot;checkbox&quot;&gt;
  		&lt;label&gt;
  			&lt;input type=&quot;checkbox&quot;&gt; Check me out
  		&lt;/label&gt;
  	&lt;/div&gt;
  
	&lt;b:commandButton value=&quot;Submit&quot; /&gt;
&lt;/form&gt;	
	
</pre>	




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


<h2>SelectOneMenu and SelectMultiMenu</h2>

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
	     <b:selectMultiMenu name="select" help="Use Ctrl to select multiple items">
	     	<b:selectItem display="Manually Created Value" />
	     	<b:selectItems query="#rc.qryData#" selected="#selected#" />
	     </b:selectMultiMenu>
	</td>
</tr>
</tbody>
</b:table>


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
       <th>Radio</th>
       <th>Checkbox round</th>
       <th>Radio square</th>
       <th><code>look</code> attribute</th>
       <th>Description</th>
   </tr>
</thead>
<tbody>
   <tr>
       <td><b:checkbox checked="true" name="myc" id="auto">Checkbox</b:checkbox></td>
       <td><b:radio name="myr" id="auto">Radio</b:radio></td>
       <td><b:checkbox circle="true" id="auto" checked="true">Checkbox</b:checkbox></td>
       <td><b:radio name="myr" square="true" id="auto">Radio</b:radio></td>
      
       <td>missing</td>
       <td>Standard gray button with gradient</td>
   </tr>

   <tr>
       <td><b:checkbox	look="primary" 			id="auto" checked="true">Checkbox</b:checkbox></td>
       <td><b:radio 	look="primary" name="myr" 	id="auto">Radio</b:radio></td>
       <td><b:checkbox	look="primary" circle="true" name="myc" checked="true"id="auto">Checkbox</b:checkbox></td>
       <td><b:radio		look="primary" square="true" name="myr2"id="auto">Radio</b:radio></td>
      
       <td><code>look="primary"</code></td>
       <td>Provides extra visual weight and identifies the primary action in a set of buttons</td>
   </tr>
   
   <tr>
       <td><b:checkbox	look="info" checked="true" id="auto">Checkbox</b:checkbox></td>
       <td><b:radio 	look="info" 				name="myr" id="auto">Radio</b:radio></td>
       <td><b:checkbox	look="info" circle="true" 	name="myc" checked="true" id="auto">Checkbox</b:checkbox></td>
       <td><b:radio		look="info" square="true"	name="myr2" id="auto">Radio</b:radio></td>
      
       <td><code>look="info"</code></td>
       <td>Used as an alternative to the default styles</td>
   </tr>

   <tr>
       <td><b:checkbox	look="success" checked="true" id="auto">Checkbox</b:checkbox></td>
       <td><b:radio 	look="success" 			name="myr" id="auto">Radio</b:radio></td>
       <td><b:checkbox	look="success" circle="true"	name="myc" checked="true" id="auto">Checkbox</b:checkbox></td>
       <td><b:radio		look="success" square="true"	name="myr2" id="auto">Radio</b:radio></td>
      
       <td><code>look="success"</code></td>
       <td>Indicates a successful or positive action</td>
   </tr>
   
   <tr>
       <td><b:checkbox	look="warning" checked="true" id="auto">Checkbox</b:checkbox></td>
       <td><b:radio 	look="warning" 			name="myr" id="auto">Radio</b:radio></td>
       <td><b:checkbox	look="warning" circle="true"	name="myc" id="auto" checked="true">Checkbox</b:checkbox></td>
       <td><b:radio		look="warning" square="true" 	name="myr2" id="auto">Radio</b:radio></td>
      
       <td><code>look="warning"</code></td>
       <td>Indicates caution should be taken with this action</td>
   </tr>
   
      <tr>
       <td><b:checkbox	look="danger" checked="true" id="auto">Checkbox</b:checkbox></td>
       <td><b:radio 	look="danger" name="myr" id="auto" checked="true">Radio</b:radio></td>
       <td><b:checkbox	look="danger" circle="true" id="auto" checked="true">Checkbox</b:checkbox></td>
       <td><b:radio		look="danger" square="true" name="myr2" id="auto" checked="true">Radio</b:radio></td>
      
       <td><code>look="danger"</code></td>
       <td>Indicates a dangerous or potentially negative action</td>
   </tr>


</tbody>
</b:table>












