
<cfimport prefix="b" taglib="../_bootstrap">


<b:row>
	<b:column span="12">
		<b:h1 pageHeader="true">Buttons Examples</b:h1>
		<p>b:button, b:commandButton, b:commandLink</p>
	</b:column>
</b:row>


<b:h1 key="introduction" />


<b:panel look="info" title="Attributes of <b:button>, <b:commandButton>, & <b:commandLink>">

	<b:table styleClass="datatables">
	<thead>
		<tr>
			<th></th>
			<b:th key="panel_attribute" />
			<b:th text="nowrap">Default value</b:th>
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
			<td></td>
			<td>ajax</td>
			<td>(none)</td>
			<td>Reserved for future use</td>
			<td>N/A</td>
		</tr>
		<tr>
			<td></td>
			<td>binding</td>
			<td>(none)</td>
			<td>Try to find the value of this tag in the <code>rc.*</code> scope. See note below</td>
			<td>N/A</td>
		</tr>
		<tr>
			<td></td>
			<td>bold</td>
			<td>false</td>
			<td>Automatically wraps content in <code>&lt;b&gt;</code> tags</td>
			<td>Must evaluate to boolean</td>
		</tr>	
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
			<td>Pass through of HTML <code>disabled="disabled"</code>.</td>
			<td>Must evaluate to boolean, disabled is treated as true</td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>dismiss</td>
			<td>false</td>
			<td>Sets <code> data-dismiss=</code></td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>dropdown</td>
			<td>false</td>
			<td>For <code>b:button</code>, this activates a dropdown menu</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>icon</td>
			<td>(none)</td>
			<td>Adds Glyphicon</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>iconAlign</td>
			<td>(none)</td>
			<td>Aligns icon</td>
			<td><code>encodeForHTMLAttribute()</code></td>
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
			<td>lang</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>lang=</code></td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td></td>
			<td>library</td>
			<td>default</td>
			<td>Which icon library should be used? This is set via: <code>application.Bootstrap.IconLibrary[attributes.library]</code>. This site uses Glyphicons</td>
			<td>Must be valid library</td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>look</td>
			<td>default</td>
			<td>Must be one of: <cfoutput>#application.Bootstrap.validLook.toList()#</cfoutput></td>
			<td><code>encodeForHTMLAttribute()</code></td>
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
			<td><b:label>Bootstrap</b:label></td>
			<td>outline</td>
			<td>false</td>
			<td>This will create a button with a thin outline. 
				When you hover over it, it will fill in <b:label look="Info" value="BS4" />
			</td>
			<td>Must evaluate to boolean</td>
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
			<td></td>
			<td>role</td>
			<td>button</td>
			<td>Pass through of HTML <code>role=</code></td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>size</td>
			<td>(none)</td>
			<td>How big</td>
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
			<td><b:label look="info">Antisamy</b:label></td>
			<td>throwOnError</td>
			<td>false</td>
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
		<tr>
			<td></td>
			<td>value</td>
			<td>(none)</td>
			<td>Content to be displayed. Tag also support <code>thisTag.GeneratedContent</code> See note below</td>
			<td><code>encodeForHTML()</code></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>




<b:panel look="info" title="Attributes of <b:commandLink> only">

	<b:table styleClass="datatables">
	<thead>
		<tr>
			<th></th>
			<b:th key="panel_attribute" />
			<b:th text="nowrap">Default value</b:th>
			<b:th key="plugin_desc" />
			<th>Sanitized</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td></td>
			<td>action</td>
			<td>(none)</td>
			<td>For <code>b:commandLink</code> to creates an absolute link. 
				To use this tag, you must set <code>application.Bootstrap.actionRoot</code>.
			</td>
			<td><b:label look="danger">No</b:label></td>
		</tr>
		<tr>
			<td></td>
			<td>href</td>
			<td>(none)</td>
			<td>For <code>b:commandLink</code> to creates a link to action. This is a pass through of HTML <code>href=</code>.</td>
			<td><b:label look="danger">No</b:label></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>look</td>
			<td>default</td>
			<td>Valid value for buttons are "default", "primary", "success", "info", "warning", "danger", "link". 
				If "Link" is chosen, then all the button classes are removed. <!-- I will let you figure out why --></code>
			</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td></td>
			<td>target</td>
			<td>(none)</td>
			<td>Pass though of <code>target=</code> for <code>&lt;b:commandLink&gt;</code></td>
			<td><code>encodeForURL()</code></td>
		</tr>
		<tr>
			<td></td>
			<td>tooltipKey</td>
			<td>(none)</td>
			<td>Like <code>key=</code></td>
			<td><b:label look="danger">No</b:label></td>
		</tr>
		<tr>
			<td></td>
			<td>tooltipPlaceholder</td>
			<td>(none)</td>
			<td>Like <code>placeholder=</code></td>
			<td><b:label look="danger">No</b:label></td>
		</tr>	
	</tbody>
	</b:table>
</b:panel>

<p>If both <code>id=</code>, <code>action=</code>, and <code>href=</code> are all blank or not set, 
	then a link will be created to <code>application.Bootstrap.actionRoot</code>.
</p>



<h3>Where does content come from?</h3>

<p>Order of precedence</p>

<ol>
	<li>Binding 	(<code>xmlFormat()</code>)</li>
	<li>Value		(<code>xmlFormat()</code>)</li>
	<li>Generated Content (use this option to pass in HTML)</li>
</ol>

<p>Not is not expected that all three will be loaded. Generated Content and Value are very similar. It is expected that one or the other will be used</p>


<b:h1 key="examples" />

<h3>&lt;b:button&gt;</h3>
<p>Buttons have a type of button</p>


<b:table>
<thead>
	<tr>
		<th><code>size="lg"</code></th>
		<th>Default</th>
		<th><code>size="sm"</code></th>
		<th><code>size="xs"</code></th>
		<th><code>outline="true" </code> <b:label look="Info" value="BS4" /></th>
		<th><code>look</code> attribute</th>
		<b:th key="plugin_desc" />
	</tr>
</thead>
<tbody>
	<tr>
		<td><b:button value="Default" icon="map-marker" size="lg" /></td>
		<td><b:button value="Default" icon="map-marker" /></td>
		<td><b:button value="Default" icon="map-marker" size="sm" /></td>
		<td><b:button value="Default" icon="map-marker" size="xs" /></td>
		<td><b:button value="Default" icon="map-marker" outline="true" /></td>
		<td>missing</td>
		<td>With Glyphicon</td>
	</tr>
	<tr>
		<td><b:button value="Default" icon="map-marker" iconAlign="right" size="lg" /></td>
		<td><b:button value="Default" icon="map-marker" iconAlign="right" /></td>
		<td><b:button value="Default" icon="map-marker" iconAlign="right" size="sm" /></td>
		<td><b:button value="Default" icon="map-marker" iconAlign="right" size="xs" /></td>
		<td><b:button value="Default" icon="map-marker" iconAlign="right" outline="true" /></td>
		<td>missing</td>
		<td>With Glyphicon that is aligned right</td>
	</tr>
	<tr>
		<td><b:button value="Default" size="lg" /></td>
		<td><b:button value="Default" /></td>
		<td><b:button value="Default" size="sm" /></td>
		<td><b:button value="Default" size="xs" /></td>
		<td><b:button value="Default" outline="true" /></td>
		<td>missing</td>
		<td>Standard gray button with gradient</td>
	</tr>
	<tr>
		<td><b:button value="Primary" look="primary"  size="lg"/></td>
		<td><b:button value="Primary" look="primary"/></td>
		<td><b:button value="Primary" look="primary" size="sm"/></td>
		<td><b:button value="Primary" look="primary" size="xs"/></td>
		<td><b:button value="Primary" look="primary" outline="true"/></td>
		<td><code>look="primary"</code></td>
		<td>Provides extra visual weight and identifies the primary action in a set of buttons</td>
	</tr>
	<tr>
		<td><b:button look="info" value="Info"  size="lg"/></td>
		<td><b:button look="info" value="Info"/></td>
		<td><b:button look="info" value="Info" size="sm"/></td>
		<td><b:button look="info" value="Info" size="xs"/></td>
		<td><b:button look="info" value="Info" outline="true"/></td>
		<td><code>look="info"</code></td>
		<td>Used as an alternative to the default styles</td>
	</tr>
	<tr>
		<td><b:button look="success" value="Success" size="lg"/></td>
		<td><b:button look="success" value="Success"/></td>
		<td><b:button look="success" value="Success" size="sm"/></td>
		<td><b:button look="success" value="Success" size="xs"/></td>
		<td><b:button look="success" value="Success" outline="true" /></td>
		<td><code>look="success"</code></td>
		<td>Indicates a successful or positive action</td>
	</tr>
	<tr>
		<td><b:button look="warning" value="Warning" size="lg"/></td>
		<td><b:button look="warning" value="Warning"/></td>
		<td><b:button look="warning" value="Warning" size="sm"/></td>
		<td><b:button look="warning" value="Warning" size="xs"/></td>
		<td><b:button look="warning" value="Warning" outline="true" /></td>
		<td><code>look="warning"</code></td>
		<td>Indicates caution should be taken with this action</td>
	</tr>
	<tr>
		<td><b:button look="danger" value="Danger" size="lg"/></td>
		<td><b:button look="danger" value="Danger"/></td>
		<td><b:button look="danger" value="Danger" size="sm"/></td>
		<td><b:button look="danger" value="Danger" size="xs"/></td>
		<td><b:button look="danger" value="Danger" outline="true" /></td>
		<td><code>look="danger"</code></td>
		<td>Indicates a dangerous or potentially negative action</td>
	</tr>
	<tr>
		<td><b:button look="link" value="Link"  size="lg" /></td>
		<td><b:button look="link" value="Link" /></td>
		<td><b:button look="link" value="Link" size="sm"/></td>
		<td><b:button look="link" value="Link" size="xs"/></td>
		<td><b:button look="link" value="Link" outline="true" /></td>
		<td><code>look="link"</code></td>
		<td>Button that looks like a link <!--- as opposed to a link that looks like a button ---></td>
   </tr>

</tbody>
</b:table>



<h3>&lt;b:CommandButton&gt;</h3>
<p>Submit and reset buttons</p>


<b:table>
<thead>
	<tr>
		<th><code>size="lg"</code></th>
		<th>Default</th>
		<th><code>size="sm"</code></th>
		<th><code>size="xs"</code></th>
		<th><code>outline="true" </code> <b:label look="Info" value="BS4" /></th>
		<th><code>look</code> attribute</th>
		<b:th key="plugin_desc" />
	</tr>
</thead>
<tbody>
	<tr>
		<td><b:commandButton value="Default" icon="map-marker" size="lg" /></td>
		<td><b:commandButton value="Default" icon="map-marker" /></td>
		<td><b:commandButton value="Default" icon="map-marker" size="sm" /></td>
		<td><b:commandButton value="Default" icon="map-marker" size="xs" /></td>
		<td><b:commandButton value="Default" icon="map-marker" outline="true" /></td>
		<td>missing</td>
		<td>With Glyphicon</td>
	</tr>
	<tr>
		<td><b:commandButton value="Default" icon="map-marker" iconAlign="right" size="lg" /></td>
		<td><b:commandButton value="Default" icon="map-marker" iconAlign="right" /></td>
		<td><b:commandButton value="Default" icon="map-marker" iconAlign="right" size="sm" /></td>
		<td><b:commandButton value="Default" icon="map-marker" iconAlign="right" size="xs" /></td>
		<td><b:commandButton value="Default" icon="map-marker" iconAlign="right" outline="true" /></td>
		<td>missing</td>
		<td>With Glyphicon that is aligned right</td>
	</tr>
	<tr>
		<td><b:commandButton value="Default" size="lg" /></td>
		<td><b:commandButton value="Default" /></td>
		<td><b:commandButton value="Default" size="sm" /></td>
		<td><b:commandButton value="Default" size="xs" /></td>
		<td><b:commandButton value="Default" outline="true" /></td>
		<td>missing</td>
		<td>Standard gray button with gradient</td>
	</tr>
	<tr>
		<td><b:commandButton value="Primary" look="primary" size="lg"/></td>
		<td><b:commandButton value="Primary" look="primary" /></td>
		<td><b:commandButton value="Primary" look="primary" size="sm"/></td>
		<td><b:commandButton value="Primary" look="primary" size="xs"/></td>
		<td><b:commandButton value="Primary" look="primary" outline="true" /></td>
		<td><code>look="primary"</code></td>
		<td>Provides extra visual weight and identifies the primary action in a set of buttons</td>
	</tr>
	<tr>
		<td><b:commandButton look="info" value="Info" size="lg"/></td>
		<td><b:commandButton look="info" value="Info" /></td>
		<td><b:commandButton look="info" value="Info" size="sm"/></td>
		<td><b:commandButton look="info" value="Info" size="xs"/></td>
		<td><b:commandButton look="info" value="Info" outline="true" /></td>
		<td><code>look="info"</code></td>
		<td>Used as an alternative to the default styles</td>
	</tr>
	<tr>
		<td><b:commandButton look="success" value="Success" size="lg"/></td>
		<td><b:commandButton look="success" value="Success" /></td>
		<td><b:commandButton look="success" value="Success" size="sm"/></td>
		<td><b:commandButton look="success" value="Success" size="xs"/></td>
		<td><b:commandButton look="success" value="Success" outline="true" /></td>
		<td><code>look="success"</code></td>
		<td>Indicates a successful or positive action</td>
	</tr>
	<tr>
		<td><b:commandButton look="warning" value="Warning" size="lg"/></td>
		<td><b:commandButton look="warning" value="Warning"/></td>
		<td><b:commandButton look="warning" value="Warning" size="sm"/></td>
		<td><b:commandButton look="warning" value="Warning" size="xs"/></td>
		<td><b:commandButton look="warning" value="Warning" outline="true" /></td>
		<td><code>look="warning"</code></td>
		<td>Indicates caution should be taken with this action</td>
	</tr>
	<tr>
		<td><b:commandButton look="danger" value="Danger" size="lg"/></td>
		<td><b:commandButton look="danger" value="Danger" /></td>
		<td><b:commandButton look="danger" value="Danger" size="sm"/></td>
		<td><b:commandButton look="danger" value="Danger" size="xs"/></td>
		<td><b:commandButton look="danger" value="Danger" outline="true" /></td>
		<td><code>look="danger"</code></td>
		<td>Indicates a dangerous or potentially negative action</td>
	</tr>
	<tr>
		<td><b:commandButton look="link" value="Link" size="lg" /></td>
		<td><b:commandButton look="link" value="Link" /></td>
		<td><b:commandButton look="link" value="Link" size="sm"/></td>
		<td><b:commandButton look="link" value="Link" size="xs"/></td>
		<td><b:commandButton look="link" value="Link" outline="true" /></td>
		<td><code>look="link"</code></td>
		<td>Link that looks like a link <!--- as opposed to a link that looks like a button ---></td>
	</tr>
</tbody>
</b:table>




<h3>&lt;b:CommandLink&gt;</h3>
<p>This are links that have been made to look like buttons</p>


<b:table>
<thead>
	<tr>
		<th><code>size="lg"</code></th>
		<th>Default</th>
		<th><code>size="sm"</code></th>
		<th><code>size="xs"</code></th>
		<th><code>outline="true" </code> <b:label look="Info" value="BS4" /></th>
		<th><code>look</code> attribute</th>
		<b:th key="plugin_desc" />
</tr>
</thead>
<tbody>
	<tr>
		<td><b:commandLink href="##" value="Default" icon="map-marker" size="lg" /></td>
		<td><b:commandLink href="##" value="Default" icon="map-marker" /></td>
		<td><b:commandLink href="##" value="Default" icon="map-marker" size="sm" /></td>
		<td><b:commandLink href="##" value="Default" icon="map-marker" size="xs" /></td>
		<td><b:commandLink href="##" value="Default" icon="map-marker" outline="true" /></td>
				
		<td>missing</td>
		<td>With Glyphicon</td>
	</tr>
	<tr>
		<td><b:commandLink href="##" value="Default" icon="map-marker" iconAlign="right" size="lg" /></td>
		<td><b:commandLink href="##" value="Default" icon="map-marker" iconAlign="right" /></td>
		<td><b:commandLink href="##" value="Default" icon="map-marker" iconAlign="right" size="sm" /></td>
		<td><b:commandLink href="##" value="Default" icon="map-marker" iconAlign="right" size="xs" /></td>
		<td><b:commandLink href="##" value="Default" icon="map-marker" iconAlign="right" outline="true" /></td>
		
		
		<td>missing</td>
		<td>With Glyphicon that is aligned right</td>
   </tr>
   <tr>
		<td><b:commandLink href="##" value="Default" size="lg" /></td>
		<td><b:commandLink href="##" value="Default" /></td>
		<td><b:commandLink href="##" value="Default" size="sm" /></td>
		<td><b:commandLink href="##" value="Default" size="xs" /></td>
		<td><b:commandLink href="##" value="Default" outline="true" /></td>
		
		<td>missing</td>
		<td>Standard gray button with gradient</td>
   </tr>
   <tr>
		<td><b:commandLink href="##" value="Primary" look="primary"  size="lg"/></td>
		<td><b:commandLink href="##" value="Primary" look="primary"/></td>
		<td><b:commandLink href="##" value="Primary" look="primary" size="sm"/></td>
		<td><b:commandLink href="##" value="Primary" look="primary" size="xs"/></td>
		<td><b:commandLink href="##" value="Primary" look="primary" outline="true"/></td>
		
		
		<td><code>look="primary"</code></td>
		<td>Provides extra visual weight and identifies the primary action in a set of buttons</td>
   </tr>
   <tr>
		<td><b:commandLink href="##" look="info" value="Info"  size="lg"/></td>
		<td><b:commandLink href="##" look="info" value="Info"/></td>
		<td><b:commandLink href="##" look="info" value="Info" size="sm"/></td>
		<td><b:commandLink href="##" look="info" value="Info" size="xs"/></td>
		<td><b:commandLink href="##" look="info" value="Info" outline="true"/></td>
		
		
		<td><code>look="info"</code></td>
		<td>Used as an alternative to the default styles</td>
   </tr>
   <tr>
		<td><b:commandLink href="##" look="success" value="Success" size="lg"/></td>
		<td><b:commandLink href="##" look="success" value="Success"/></td>
		<td><b:commandLink href="##" look="success" value="Success" size="sm"/></td>
		<td><b:commandLink href="##" look="success" value="Success" size="xs"/></td>
		<td><b:commandLink href="##" look="success" value="Success" outline="true"/></td>
				
		<td><code>look="success"</code></td>
		<td>Indicates a successful or positive action</td>
   </tr>
   <tr>
		<td><b:commandLink href="##" look="warning" value="Warning" size="lg"/></td>
		<td><b:commandLink href="##" look="warning" value="Warning"/></td>
		<td><b:commandLink href="##" look="warning" value="Warning" size="sm"/></td>
		<td><b:commandLink href="##" look="warning" value="Warning" size="xs"/></td>
		<td><b:commandLink href="##" look="warning" value="Warning" outline="true"/></td>
		
		
		<td><code>look="warning"</code></td>
		<td>Indicates caution should be taken with this action</td>
   </tr>
   <tr>
		<td><b:commandLink href="##" look="danger" value="Danger" size="lg"/></td>
		<td><b:commandLink href="##" look="danger" value="Danger"/></td>
		<td><b:commandLink href="##" look="danger" value="Danger" size="sm"/></td>
		<td><b:commandLink href="##" look="danger" value="Danger" size="xs"/></td>
		<td><b:commandLink href="##" look="danger" value="Danger" outline="true"/></td>
		
		
		<td><code>look="danger"</code></td>
		<td>Indicates a dangerous or potentially negative action</td>
   </tr>
   <tr>
		<td><b:commandLink href="##" look="link" value="Link"  size="lg" /></td>
		<td><b:commandLink href="##" look="link" value="Link" /></td>
		<td><b:commandLink href="##" look="link" value="Link"  size="sm"/></td>
		<td><b:commandLink href="##" look="link" value="Link"  size="xs"/></td>
		<td><b:commandLink href="##" look="link" value="Link"  outline="true"/></td>
		
		
		<td><code>look="link"</code></td>
		<td>A link that looks like a link. No button class are applied</td>
   </tr>

</tbody>
</b:table>


<h3>&lt;b:commandLink&gt; with bolding</h3>

<p>It is is often useful to bold buttons to call out their importance</p>


<b:table>
<thead>
	<tr>
		<td></td>	
		<td>Normal</td>
		<td><code>bold="1"</code></td>
		<td><code>bold="0"</code></td>
	</tr>
</thead>
<tbody>
	<tr>
		<td>Normal</td>
		<td><b:commandLink href="##" value="Normal" look="primary"  size="lg"/></td>
		<td><b:commandLink href="##" value="Bold 1" look="primary"  size="lg" bold="1"/></td>
		<td><b:commandLink href="##" value="Bold 0" look="primary"  size="lg" bold="0"/></td>
	</tr>
	<tr>
		<td><code>disabled="disabled"</td>
		<td><b:commandLink href="##" value="Normal" look="primary" disabled="disabled" size="lg"/></td>
		<td><b:commandLink href="##" value="Bold 1" look="primary" disabled="disabled" size="lg" bold="1"/></td>
		<td><b:commandLink href="##" value="Bold 0" look="primary" disabled="disabled" size="lg" bold="0"/></td>
	</tr>
	
</tbody>
</b:table>		
		


<h2>Also See</h2>


<b:commandLink action="~/docs/buttonGroups" value="ButtonGroup" />
<b:commandLink action="~/docs/nav" value="ButtonBar" />



