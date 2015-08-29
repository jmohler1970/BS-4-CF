<cfimport prefix="b" taglib="../bootstrap">



<row>
	<column span="12">	
		<h1 pageHeader="true">Image</h1>
		<p>b:graphicImage, b:outputStyleSheet, and b:outputScript</p>
	</column>	
</row>




<h2>Introduction</h2>


<b:blockquote>
	<p>Add classes to an <img> element to easily style images in any project.</p>

	<footer><a href="http://getbootstrap.com/css/#images-responsive">http://getbootstrap.com/css/#images-responsive</a></footer>
</b:blockquote>


<p><code>&lt;b:graphicImage&gt;</code> is oriented towards supporting image libraries. This allows the application to globally set look and feel.</p>


<b:panel look="info" title="Attributes of &lt;b:graphicImage&gt;">

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
			<td>alt</td>
			<td>(none)</td>
			<td>Passthough of alt</code>.
			</td>
		</tr>
		<tr>
			<td>binding</td>
			<td>(none)</td>
			<td>Try to find the value of this tag in the <code>rc.*</code> scope. If found then use its value, else use the content between the tags.</td>
		</tr>
		<tr>
			<td>data-*</td>
			<td>(none)</td>
			<td>Pass through of HTML5 <code>data-*=</code> attributes.</td>
		</tr>
		<tr>
			<td>height</td>
			<td>(none)</td>
			<td>Creates the height part of style</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML id.</td>
		</tr>
		<tr>
			<td>library</td>
			<td>(none)</td>
			<td>Defaults to <code>application.Bootstrap.ImageLibrary.default</code></td>
		</tr>
		<tr>
			<td>name</td>
			<td>(none)</td>
			<td>This is a relative path, the library is prepended. If this is not set, perhaps you are doing a binding with AngularJS.</td>
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
			<td>shape</td>
			<td>(none)</td>
			<td>Such as rounded, circle, thumbnail</td>
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
		<tr>
			<td>width</td>
			<td>(none)</td>
			<td>Creates the width part of style</td>
		</tr>
	</tbody>
	</b:table>
</b:panel>




<h2>Examples</h2>


<h3>Rounded</h3>

<b:graphicImage name="cat.jpg" shape="rounded" width="240" />


<h3>Circle</h3>

<b:graphicImage name="cat.jpg" shape="circle" width="240" />



<h3>Thumbnail</h3>

<b:graphicImage name="cat.jpg" shape="thumbnail" width="240" />


<h2>Stylesheets</h2>

<b:panel look="info" title="Attributes of &lt;b:outputStyleSheet&gt;">

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
			<td>library</td>
			<td>(none)</td>
			<td>Defaults to <code>application.Bootstrap.StyleSheetLibrary.default</code></td>
		</tr>
		
		<tr>
			<td>media</td>
			<td>all</td>
			<td>Pass through of <code>media=</code> attribute</td>
		</tr>
		
		<tr>
			<td>name</td>
			<td>Required</td>
			<td>This is a relative path, the library is prepended.</td>
		</tr>
		
		<tr>
			<td>processed</td>
			<td>true</td>
			<td>This like a <code>&lt;cfif&gt;</code></td>
		</tr>
		<tr>
			<td>rel</td>
			<td>stylesheet</td>
			<td>Pass through of <code>rel=</code> attribute</td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td>This is like <code>&lt;cfsilent&gt;</code></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>


<h3>Example</h3>

<p>If this is working right, then <span class="birthday">Birthday</span> will be in a special color</p>



<h2>Javascript</h2>

<p>This is used for local Javascript libraries</p>

<b:panel look="info" title="Attributes of &lt;b:outputScript&gt;">

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
			<td>library</td>
			<td>(none)</td>
			<td>Defaults to <code>application.Bootstrap.ScriptLibrary.default</code></td>
		</tr>
		<tr>
			<td>name</td>
			<td>(none)</td>
			<td>This is a relative path, the library is prepended. this is slightly different from JSF.
				If no name set, then the content between the start and end tags is rendered in style tags. Provided that processed and rendered are true.
			</td>
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
	</tbody>
	</b:table>
</b:panel>





