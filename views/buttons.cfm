
<cfimport prefix="b" taglib="../bootstrap">


<b:row>
	<b:column span="12">	

		<b:h1 pageHeader="true">Buttons Examples</b:h1>
		<p>b:button, b:commandButton, b:commandLink</p>
	</b:column>	
</b:row>


<h2>Introduction</h2>


<b:panel look="info" title="Attributes of &lt;b:button&gt;, &lt;b:commandButton&gt;, &amp;  &lt;b:commandLink&gt;">

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
			<td>action</td>
			<td>(none)</td>
			<td>For <code>b:commandLink</code> to creates a link to action. This is a pass through of HTML <code>href=</code>.</td>
		</tr>
		<tr>
			<td>ajax</td>
			<td>(none)</td>
			<td>Reserved for future use</td>
		</tr>
		
		<tr>
			<td>binding</td>
			<td>(none)</td>
			<td>Try to find the value of this tag in the <code>rc.*</code> scope. See note below</td>
		</tr>
		<tr>
			<td>data-*</td>
			<td>(none)</td>
			<td>Pass through of HTML5 <code>data-*=</code> attributes.</td>
		</tr>
		<tr>
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML <code>disabled="disabled"</code>.</td>
		</tr>
		<tr>
			<td>dismiss</td>
			<td>false</td>
			<td>Sets <code> data-dismiss=</code></td>
		</tr>
		<tr>
			<td>dropdown</td>
			<td>false</td>
			<td>For <code>b:button</code>, this activates a dropdown menu</td>
		</tr>
		
		<tr>
			<td>icon</td>
			<td>(none)</td>
			<td>Adds Glyphicon</td>
		</tr>
		<tr>
			<td>iconAlign</td>
			<td>(none)</td>
			<td>Aligns icon</td>
		</tr>		
		<tr>
			<td>iconAwesome</td>
			<td>(none)</td>
			<td>Adds Font Awesome icon</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>id=</code>.</td>
		</tr>
		<tr>
			<td>lang</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>lang=</code></td>
		</tr>
		<tr>
			<td>look</td>
			<td>default</td>
			<td>Valid value for buttons are "default", "primary", "success", "info", "warning", "danger", "link". 
				If "Link" is chosen on <code>&lt;b:commandLink&gt;</code>, then all the button classes are removed. <!-- I will let you figure out why --></code>
			</td>
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
			<td>role</td>
			<td>role</td>
			<td>Pass through of HTML <code>role=</code></td>
		</tr>
		<tr>
			<td>size</td>
			<td>(none)</td>
			<td>How big</td>
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
			<td>target</td>
			<td>(none)</td>
			<td>Pass though of <code>target=</code> for <code>&lt;b:commandLink&gt;</code></td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of <code>title=</code></td>
		</tr>
		<tr>
			<td>tooltipPosition</td>
			<td>bottom</td>
			<td>Pass though of <code>data-placement=</code></td>
		</tr>
		<tr>
			<td>value</td>
			<td>(none)</td>
			<td>Content to be displayed. Tag also support <code>thisTag.GeneratedContent</code> See note below</td>
		</tr>
	</tbody>
	</b:table>
</b:panel>


<h3>Where does content come from?</h3>

<p>Order of precedence</p>

<ol>
	<li>Binding 	(<code>xmlFormat()</code>)</li>
	<li>Value		(<code>xmlFormat()</code>)</li>
	<li>Generated Content (use this option to pass in HTML)</li>
</ol>	

<p>Not is not expected that all three will be loaded. Generated Content and Value are very similar. It is expected that one or the other will be used</p>



<h2>&lt;b:button&gt;</h2>
<p>Buttons have a type of button</p>


<b:table>
<thead>
   <tr>
       <th><code>size="lg"</code></th>
       <th>Default</th>
       <th><code>size="sm"</code></th>
       <th><code>size="xs"</code></th>
       <th><code>look</code> attribute</th>
       <th>Description</th>
   </tr>
</thead>
<tbody>
   <tr>
       <td><b:button value="Default" icon="map-marker" size="lg" /></td>
       <td><b:button value="Default" icon="map-marker" /></td>
       <td><b:button value="Default" icon="map-marker" size="sm" /></td>
       <td><b:button value="Default" icon="map-marker" size="xs" /></td>
       
       <td>missing</td>
       <td>With Glyphicon</td>
   </tr>
   <tr>
       <td><b:button value="Default" icon="map-marker" iconAlign="right" size="lg" /></td>
       <td><b:button value="Default" icon="map-marker" iconAlign="right" /></td>
       <td><b:button value="Default" icon="map-marker" iconAlign="right" size="sm" /></td>
       <td><b:button value="Default" icon="map-marker" iconAlign="right" size="xs" /></td>
       
       <td>missing</td>
       <td>With Glyphicon that is aligned right</td>
   </tr>
   <tr>
       <td><b:button value="Default" size="lg" /></td>
       <td><b:button value="Default" /></td>
       <td><b:button value="Default" size="sm" /></td>
       <td><b:button value="Default" size="xs" /></td>
       
       <td>missing</td>
       <td>Standard gray button with gradient</td>
   </tr>
   <tr>
       <td><b:button value="Primary" look="primary"  size="lg"/></td>
       <td><b:button value="Primary" look="primary"/></td>
       <td><b:button value="Primary" look="primary" size="sm"/></td>
       <td><b:button value="Primary" look="primary" size="xs"/></td>
       
       <td><code>look="primary"</code></td>
       <td>Provides extra visual weight and identifies the primary action in a set of buttons</td>
   </tr>
   <tr>
       <td><b:button look="info" value="Info"  size="lg"/></td>
       <td><b:button look="info" value="Info"/></td>
       <td><b:button look="info" value="Info" size="sm"/></td>
       <td><b:button look="info" value="Info" size="xs"/></td>
       
       <td><code>look="info"</code></td>
       <td>Used as an alternative to the default styles</td>
   </tr>
   <tr>
       <td><b:button look="success" value="Success" size="lg"/></td>
       <td><b:button look="success" value="Success"/></td>
       <td><b:button look="success" value="Success" size="sm"/></td>
       <td><b:button look="success" value="Success" size="xs"/></td>
       
       <td><code>look="success"</code></td>
       <td>Indicates a successful or positive action</td>
   </tr>
   <tr>
       <td><b:button look="warning" value="Warning" size="lg"/></td>
       <td><b:button look="warning" value="Warning"/></td>
       <td><b:button look="warning" value="Warning" size="sm"/></td>
       <td><b:button look="warning" value="Warning" size="xs"/></td>
       
       <td><code>look="warning"</code></td>
       <td>Indicates caution should be taken with this action</td>
   </tr>
   <tr>
       <td><b:button look="danger" value="Danger" size="lg"/></td>
       <td><b:button look="danger" value="Danger"/></td>
       <td><b:button look="danger" value="Danger" size="sm"/></td>
       <td><b:button look="danger" value="Danger" size="xs"/></td>
       
       <td><code>look="danger"</code></td>
       <td>Indicates a dangerous or potentially negative action</td>
   </tr>
   <tr>
       <td><b:button look="link" value="Link"  size="lg" /></td>
       <td><b:button look="link" value="Link" /></td>
       <td><b:button look="link" value="Link"  size="sm"/></td>
       <td><b:button look="link" value="Link"  size="xs"/></td>
       
       <td><code>look="link"</code></td>
       <td>Button that looks like a link <!--- as opposed to a link that looks like a button ---></td>
   </tr>

</tbody>
</b:table>



<h2>&lt;b:CommandButton&gt;</h2>
<p>Buttons have a type of submit</p>


<b:table>
<thead>
   <tr>
       <th><code>size="lg"</code></th>
       <th>Default</th>
       <th><code>size="sm"</code></th>
       <th><code>size="xs"</code></th>
       <th><code>look</code> attribute</th>
       <th>Description</th>
   </tr>
</thead>
<tbody>
   <tr>
       <td><b:commandButton value="Default" icon="map-marker" size="lg" /></td>
       <td><b:commandButton value="Default" icon="map-marker" /></td>
       <td><b:commandButton value="Default" icon="map-marker" size="sm" /></td>
       <td><b:commandButton value="Default" icon="map-marker" size="xs" /></td>
       
       <td>missing</td>
       <td>With Glyphicon</td>
   </tr>
   <tr>
       <td><b:commandButton value="Default" icon="map-marker" iconAlign="right" size="lg" /></td>
       <td><b:commandButton value="Default" icon="map-marker" iconAlign="right" /></td>
       <td><b:commandButton value="Default" icon="map-marker" iconAlign="right" size="sm" /></td>
       <td><b:commandButton value="Default" icon="map-marker" iconAlign="right" size="xs" /></td>
       
       <td>missing</td>
       <td>With Glyphicon that is aligned right</td>
   </tr>
   <tr>
       <td><b:commandButton value="Default" size="lg" /></td>
       <td><b:commandButton value="Default" /></td>
       <td><b:commandButton value="Default" size="sm" /></td>
       <td><b:commandButton value="Default" size="xs" /></td>
       
       <td>missing</td>
       <td>Standard gray button with gradient</td>
   </tr>
   <tr>
       <td><b:commandButton value="Primary" look="primary"  size="lg"/></td>
       <td><b:commandButton value="Primary" look="primary"/></td>
       <td><b:commandButton value="Primary" look="primary" size="sm"/></td>
       <td><b:commandButton value="Primary" look="primary" size="xs"/></td>
       
       <td><code>look="primary"</code></td>
       <td>Provides extra visual weight and identifies the primary action in a set of buttons</td>
   </tr>
   <tr>
       <td><b:commandButton look="info" value="Info"  size="lg"/></td>
       <td><b:commandButton look="info" value="Info"/></td>
       <td><b:commandButton look="info" value="Info" size="sm"/></td>
       <td><b:commandButton look="info" value="Info" size="xs"/></td>
       
       <td><code>look="info"</code></td>
       <td>Used as an alternative to the default styles</td>
   </tr>
   <tr>
       <td><b:commandButton look="success" value="Success" size="lg"/></td>
       <td><b:commandButton look="success" value="Success"/></td>
       <td><b:commandButton look="success" value="Success" size="sm"/></td>
       <td><b:commandButton look="success" value="Success" size="xs"/></td>
       
       <td><code>look="success"</code></td>
       <td>Indicates a successful or positive action</td>
   </tr>
   <tr>
       <td><b:commandButton look="warning" value="Warning" size="lg"/></td>
       <td><b:commandButton look="warning" value="Warning"/></td>
       <td><b:commandButton look="warning" value="Warning" size="sm"/></td>
       <td><b:commandButton look="warning" value="Warning" size="xs"/></td>
       
       <td><code>look="warning"</code></td>
       <td>Indicates caution should be taken with this action</td>
   </tr>
   <tr>
       <td><b:commandButton look="danger" value="Danger" size="lg"/></td>
       <td><b:commandButton look="danger" value="Danger"/></td>
       <td><b:commandButton look="danger" value="Danger" size="sm"/></td>
       <td><b:commandButton look="danger" value="Danger" size="xs"/></td>
       
       <td><code>look="danger"</code></td>
       <td>Indicates a dangerous or potentially negative action</td>
   </tr>
   <tr>
       <td><b:commandButton look="link" value="Link"  size="lg" /></td>
       <td><b:commandButton look="link" value="Link" /></td>
       <td><b:commandButton look="link" value="Link"  size="sm"/></td>
       <td><b:commandButton look="link" value="Link"  size="xs"/></td>
       
       <td><code>look="link"</code></td>
       <td>Link that looks like a link <!--- as opposed to a link that looks like a button ---></td>
   </tr>

</tbody>
</b:table>




<h2>&lt;b:CommandLink&gt;</h2>
<p>Buttons have a type of submit</p>


<b:table>
<thead>
   <tr>
       <th><code>size="lg"</code></th>
       <th>Default</th>
       <th><code>size="sm"</code></th>
       <th><code>size="xs"</code></th>
       <th><code>look</code> attribute</th>
       <th>Description</th>
   </tr>
</thead>
<tbody>
   <tr>
       <td><b:commandLink action="##" value="Default" icon="map-marker" size="lg" /></td>
       <td><b:commandLink action="##" value="Default" icon="map-marker" /></td>
       <td><b:commandLink action="##" value="Default" icon="map-marker" size="sm" /></td>
       <td><b:commandLink action="##" value="Default" icon="map-marker" size="xs" /></td>
       
       <td>missing</td>
       <td>With Glyphicon</td>
   </tr>
   <tr>
       <td><b:commandLink action="##" value="Default" icon="map-marker" iconAlign="right" size="lg" /></td>
       <td><b:commandLink action="##" value="Default" icon="map-marker" iconAlign="right" /></td>
       <td><b:commandLink action="##" value="Default" icon="map-marker" iconAlign="right" size="sm" /></td>
       <td><b:commandLink action="##" value="Default" icon="map-marker" iconAlign="right" size="xs" /></td>
       
       <td>missing</td>
       <td>With Glyphicon that is aligned right</td>
   </tr>
   <tr>
       <td><b:commandLink action="##" value="Default" size="lg" /></td>
       <td><b:commandLink action="##" value="Default" /></td>
       <td><b:commandLink action="##" value="Default" size="sm" /></td>
       <td><b:commandLink action="##" value="Default" size="xs" /></td>
       
       <td>missing</td>
       <td>Standard gray button with gradient</td>
   </tr>
   <tr>
       <td><b:commandLink action="##" value="Primary" look="primary"  size="lg"/></td>
       <td><b:commandLink action="##" value="Primary" look="primary"/></td>
       <td><b:commandLink action="##" value="Primary" look="primary" size="sm"/></td>
       <td><b:commandLink action="##" value="Primary" look="primary" size="xs"/></td>
       
       <td><code>look="primary"</code></td>
       <td>Provides extra visual weight and identifies the primary action in a set of buttons</td>
   </tr>
   <tr>
       <td><b:commandLink action="##" look="info" value="Info"  size="lg"/></td>
       <td><b:commandLink action="##" look="info" value="Info"/></td>
       <td><b:commandLink action="##" look="info" value="Info" size="sm"/></td>
       <td><b:commandLink action="##" look="info" value="Info" size="xs"/></td>
       
       <td><code>look="info"</code></td>
       <td>Used as an alternative to the default styles</td>
   </tr>
   <tr>
       <td><b:commandLink action="##" look="success" value="Success" size="lg"/></td>
       <td><b:commandLink action="##" look="success" value="Success"/></td>
       <td><b:commandLink action="##" look="success" value="Success" size="sm"/></td>
       <td><b:commandLink action="##" look="success" value="Success" size="xs"/></td>
       
       <td><code>look="success"</code></td>
       <td>Indicates a successful or positive action</td>
   </tr>
   <tr>
       <td><b:commandLink action="##" look="warning" value="Warning" size="lg"/></td>
       <td><b:commandLink action="##" look="warning" value="Warning"/></td>
       <td><b:commandLink action="##" look="warning" value="Warning" size="sm"/></td>
       <td><b:commandLink action="##" look="warning" value="Warning" size="xs"/></td>
       
       <td><code>look="warning"</code></td>
       <td>Indicates caution should be taken with this action</td>
   </tr>
   <tr>
       <td><b:commandLink action="##" look="danger" value="Danger" size="lg"/></td>
       <td><b:commandLink action="##" look="danger" value="Danger"/></td>
       <td><b:commandLink action="##" look="danger" value="Danger" size="sm"/></td>
       <td><b:commandLink action="##" look="danger" value="Danger" size="xs"/></td>
       
       <td><code>look="danger"</code></td>
       <td>Indicates a dangerous or potentially negative action</td>
   </tr>
   <tr>
       <td><b:commandLink action="##" look="link" value="Link"  size="lg" /></td>
       <td><b:commandLink action="##" look="link" value="Link" /></td>
       <td><b:commandLink action="##" look="link" value="Link"  size="sm"/></td>
       <td><b:commandLink action="##" look="link" value="Link"  size="xs"/></td>
       
       <td><code>look="link"</code></td>
       <td>Button that looks like a link <!--- as opposed to a link that looks like a button ---></td>
   </tr>

</tbody>
</b:table>



<h2>Also See</h2>


<b:commandLink action="?view=buttonGroups" value="ButtonGroup" />
<b:commandLink action="?view=nav" value="ButtonBar" />



