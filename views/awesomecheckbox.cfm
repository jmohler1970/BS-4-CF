
<cfimport prefix="b" taglib="../bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Awesome Bootstrap Checkboxes Examples</b:h1>
		<p>&lt;b:selectBooleanCheckbox&gt;</p>
	</b:column>	
</b:row>




<b:h2>Introduction</b:h2>


<h2>Awesome Bootstrap Checkboxes</h2>


<b:blockquote>
	<p>Font Awesome Bootstrap Checkboxes & Radios plugin. Pure css way to make inputs look prettier. No javascript!</p>

	<footer><a href="https://github.com/flatlogic/awesome-bootstrap-checkbox">https://github.com/flatlogic/awesome-bootstrap-checkbox</a></footer>
</b:blockquote>




<p>We have included wrappers around this library for 2 reasons</p>

<ol>
	<li>They have done a very good job making checkboxes and radio buttons look great</li>
	<li>By abstracting checkboxes and radio buttons, it will be easy to swap in new libraries when that day comes</li>
</ol>


<p><b>Note:</b> Not all Awesome Bootstrap Checkboxes look awesome on all themes. Verify before using</p>


<b:panel look="info" title="Attributes of <b:checkbox>">

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
			<td>generatedContent</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td>Yes.</td>
		</tr>
	
		<tr>
			<td>circle</td>
			<td>false</td>
			<td>Show a circle instead of square</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>checked</td>
			<td>false</td>
			<td>Pass through of HTML <code>checked="checked"</code>.</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML <code>disabled="disabled"</code>.</td>
			<td>Must evaluate to boolean</td>
		</tr>		
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>inline</td>
			<td>(none)</td>
			<td>Should all these checkboxes be in a row?</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>isSafeHTML</td>
			<td>false</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>look</td>
			<td>(none)</td>
			<td>It will still look slightly larger than a normal checkbox.</td>
			<td>Must be one of: <cfoutput>#application.Bootstrap.validLook.toList()#</cfoutput></td>
		</tr>	
		<tr>
			<td>name</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>name=</code>.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>profile</td>
			<td>(none)</td>
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
			<td>size</td>
			<td>(none)</td>
			<td>How much padding should this well have</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>style</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>styleClass</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>tabIndex</td>
			<td>(none)</td>
			<td>Pass though of tabindex</td>
			<td><code>isnumeric()</code></td>
		</tr>
		<tr>
			<td>throwOnError</td>
			<td>false</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>title</td>
			<td>(none)</td>
			<td>Content next to checkbox. If it is blank, perhaps the content is nearby</td>
			<td><code>encodeForHTML()</code></td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>tooltipPosition</td>
			<td>bottom</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>


<h2>Examples</h2>


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
     	<td><input type="checkbox" id="plain"> <label for="plain">Checkbox</label></td>
		<td></td>
     
		<td>missing</td>
		<td>Standard HTML checkbox. Many themes will make the label bold</td>
	</tr>
	
   <tr>
       <td><b:selectBooleanCheckbox checked="true" name="myc" id="auto" tooltip="Hello, World!">Checkbox with tooltip</b:selectBooleanCheckbox></td>
       <td><b:selectBooleanCheckbox circle="true" id="auto" checked="true" tooltip="Hello, World!">Checkbox with tooltip</b:selectBooleanCheckbox></td>
     
       <td>missing</td>
       <td>Standard gray button with gradient. This tends to be larger.</td>
   </tr>

   <tr>
       <td><b:selectBooleanCheckbox	look="primary" 			id="auto" checked="true" tooltip="Hello, World!">Checkbox with tooltip</b:selectBooleanCheckbox></td>
       <td><b:selectBooleanCheckbox	look="primary" circle="true" name="myc" checked="true"id="auto" tooltip="Hello, World!">Checkbox with tooltip</b:selectBooleanCheckbox></td>
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


