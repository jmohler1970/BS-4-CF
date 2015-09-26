
<cfimport prefix="b" taglib="../bootstrap">







<b:row>
	<b:column span="12">	

		<b:h1 pageHeader="true">Glyphicon Examples</b:h1>
		<p>b:icon</p>
	</b:column>	
</b:row>


<h2>Introduction</h2>

<p>Brings in the power of Glyphicons and Font Awesome. This tag should not have sub tags</p>

<p>If possible, use the icons that are a part of one of the button tags</p>

<b:panel look="info" title="Attributes of <b:icon>">

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
			<td>addon</td>
			<td>(none)</td>
			<td>Is this a part of an input.</td>
		</tr>
		<tr>
			<td>binding</td>
			<td>(none)</td>
			<td>Variable that controls what icon to show</td>
		</tr>
		<tr>
			<td>data-*</td>
			<td>(none)</td>
			<td>Pass through of HTML5 <code>data-*=</code> attributes.</td>
		</tr>
		<tr>
			<td>flip</td>
			<td>(none)</td>
			<td>For <code>&lt;b:iconAwesome&gt;, the icon can be flipped horizontally or vertically. H, V, and blank are valid values</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>id=</code>.</td>
			<td><code>REFindNoCase('[^0-9A-Za-z ]')</code> is false.
				 Must be less than  <cfoutput>#application.Bootstrap.limit.id#</cfoutput> characters
			</td>
		</tr>
		<tr>
			<td>library</td>
			<td>default</td>
			<td>Which icon library should be used? This is set via: <code>application.Bootstrap.IconLibrary[attributes.library]</code>. This site uses Glyphicons</td>
		</tr>
		<tr>
			<td>look</td>
			<td>(none)</td>
			<td>What colors should this have.</td>
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
			<td>rotate</td>
			<td>(none)</td>
			<td>For <code>&lt;b:iconAwesome&gt;, the icon can be rotated left or right. L, R, and blank are valid values</td>
		</tr>

		<tr>
			<td>size</td>
			<td>(none)</td>
			<td>This uses Font Awesome to do the sizing</td>
		</tr>
		<tr>
			<td>spin</td>
			<td>(none)</td>
			<td>This uses Font Awesome to do spinning</td>
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
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of title</td>
		</tr>


	</tbody>
	</b:table>
</b:panel>


<h2>Requirements for b:icon</h2>

<p>In order for sizing and spinning to work, the Font Awesome is required. Glyphicons work with the default Bootstrap package.</p>



<h2>Requirements for b:iconAwesome</h2>

<p>Font Awesome package is required</p>


<h2>Example with &lt;b:icon&gt;</h2>

<b:table>
<thead>
<tr>
	<th>Name</th>
	<th>Default look</th>
	<th><code>look="success</code></th>
	<th><code>look="danger"</code></th>
	<th><code>size="lg"</code></th>
	<th><code>size="2x"</code></th>
	<th><code>spin="true"</code></th>
</tr>
</thead>	

<tbody>
<cfloop list="tags,book,bookmark,print,camera,flag,download,upload,inbox,repeat,trash,check" index="rc.i">
	<tr>
		<td><cfoutput>#rc.i#</cfoutput></td>
		<td><b:icon binding="i" /></td>
		<td><b:icon binding="i" look="success"	/></td>
		<td><b:icon binding="i" look="danger"	/></td>
		<td><b:icon binding="i" size="lg" 		/></td>
		<td><b:icon binding="i" size="2x" 		/></td>
		<td><b:icon binding="i" spin="true"	/></td>
	</tr>
</cfloop>
</tbody>

</b:table>




<h2>Example with &lt;b:icon&gt; using Font Awesome</h2>

<p>It is recommended that only one library be used per application. The <code>library=""</code> is used for overrides</p>

<b:table>
<thead>
<tr>
	<th>Name</th>
	<th>Default look</th>
	<th><code>look="success</code></th>
	<th><code>look="danger"</code></th>
	<th><code>size="lg"</code></th>
	<th><code>size="2x"</code></th>
	<th><code>spin="true"</code></th>
</tr>
</thead>	

<tbody>
<cfloop list="tags,book,bookmark,print,camera,flag,download,upload,inbox,repeat,trash,check" index="rc.i">
	<tr>
		<td><cfoutput>#rc.i#</cfoutput></td>
		<td><b:icon library="awesome" binding="i" /></td>
		<td><b:icon library="awesome" binding="i" look="success"/></td>
		<td><b:icon library="awesome" binding="i" look="danger"	/></td>
		<td><b:icon library="awesome" binding="i" size="lg" 	/></td>
		<td><b:icon library="awesome" binding="i" size="2x" 	/></td>
		<td><b:icon library="awesome" binding="i" spin="true"	/></td>
	</tr>
</cfloop>
</tbody>

</b:table>

