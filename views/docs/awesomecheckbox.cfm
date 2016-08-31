
<cfimport prefix="b" taglib="../../vendor/tags/bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Awesome Bootstrap Checkboxes Examples</b:h1>
		<p>&lt;b:selectBooleanCheckbox&gt;</p>
	</b:column>	
</b:row>




<b:h1 key="Introduction" />



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
			<td>generatedContent</td>
			<td>(none)</td>
			<b:td key="common" />
			<td><b:yesnoFormat value="1" /></td>
		</tr>
		<tr>
			<td><b:label look="warning">Ehcache</b:label></td>
			<td>cacheid</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>

		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>circle</td>
			<td>false</td>
			<td>Show a circle instead of square</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td></td>
			<td>checked</td>
			<td>false</td>
			<td>Pass through of HTML <code>checked="checked"</code>.</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td></td>
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML <code>disabled="disabled"</code>.</td>
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
			<td>inline</td>
			<td>(none)</td>
			<td>Should all these checkboxes be in a row?</td>
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
			<td> <b:label look="success">i18n</b:label></td>
			<td>key</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>look</td>
			<td>(none)</td>
			<td>It will still look slightly larger than a normal checkbox.</td>
			<td>Must be one of: <i>Blank</i><cfoutput>#application.Bootstrap.validLook.toList()#</cfoutput></td>
		</tr>	
		<tr>
			<td></td>
			<td>name</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>name=</code>.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
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
			<td>size</td>
			<td>(none)</td>
			<td>How much padding should this well have</td>
			<td><code>encodeForHTMLAttribute()</code></td>
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
			<td></td>
			<td>tabIndex</td>
			<td>(none)</td>
			<td>Pass though of tabindex</td>
			<td><code>isnumeric()</code></td>
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
			<td>title</td>
			<td>(none)</td>
			<td>Content next to checkbox. If it is blank, perhaps the content is nearby. This is not a tooltip</td>
			<td><code>encodeForHTML()</code></td>
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


<b:h1 key="examples" />


<b:table>
<thead>
   <tr>
       <th>Checkbox</th>
       <th>Checkbox round</th>
       <th><code>look</code> attribute</th>
       <b:th key="plugin_desc" />
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


