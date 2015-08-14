
<cfimport prefix="b" taglib="../bootstrap">


<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Buttons Examples</b:h1>
			<p>View code for details.</p>
		</b:column>	
	</b:row>
</div>


<h2>Ordinary Buttons</h2>
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



<h2>CommandButtons</h2>
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
       <td>Button that looks like a link <!--- as opposed to a link that looks like a button ---></td>
   </tr>

</tbody>
</b:table>

