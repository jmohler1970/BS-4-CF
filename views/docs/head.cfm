<cfimport prefix="b" taglib="../_bootstrap">



<row>
	<column span="12">	
		<h1 pageHeader="true">Image</h1>
		<p>b:outputStylesheets & b:outputScript</p>
	</column>	
</row>


<h2>Introduction</h2>

<p>Brings in stylesheets and javascript</p>

<h3>Minimal setup</h3>


<p>Inside of <code>application.cfc</code></p>

<pre>
	application.Bootstrap = {
	
		actionRoot 		= cgi.script_name,
		IconLibrary		= {"default" = "glyphicon glyphicon-", "awesome" = "fa fa-"},
		ImageLibrary		= {"default" = replace(cgi.script_name, "/index.cfm", "") & "/assets/"},	
		StyleSheetLibrary	= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"},	
		ScriptLibrary		= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"}	
		};
	
	
// OR if you want to use named style sheets, then only out in a partial path, like an image
// application.Bootstrap.StyleSheetLibrary["default"] 	= replace(cgi.script_name, "/index.cfm", "") & "/assets/";		
// application.Bootstrap.ScriptLibrary["default"]		= replace(cgi.script_name, "/index.cfm", "") & "/assets/";		
</pre>


<p>Inside of <code>&lt;b:head&gt;</code> of the generated content. In FW/1 this is the layout file</p>


<pre>
&lt;b:outputStylesheet /&gt;
&lt;b:outputScript /&gt;
</pre>


<p>Inside of each view file</p>

<pre>
&lt;cfimport prefix="b" taglib="../bootstrap"&gt;
</pre>	

<!--- And Bob's your uncle --->


<h2>Head Tag</h2>

<p>The primary purpose of this tag is the be the container for <code>b:outputStylesheet</code> and <code>b:outputScript</code>.
	It is possible to set processed or render to false. These were included for completeness</p>


<b:panel look="info" title="Attributes of <b:head>">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<b:th text="nowrap">Default value</b:th>
			<th>Description</th>
			<th>Sanitized</th>
		</tr>	
	</thead>
	<tbody>
		<tr>
			<td>generatedContent</td>
			<td>(none)</td>
			<td>Pass through of content</td>
			<td><b:label look="danger">No</b:label> Default Antisamy wouldn't work anyway</td>
		</tr>
		<tr>
			<td>isSafeHTML</td>
			<td>false</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>profile</td>
			<td>(none)</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>throwOnError</td>
			<td>false</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>


<h2>Stylesheets</h2>

<p>These must be inside of b:head.</p>


<b:panel look="info" title="Attributes of <b:outputStyleSheet>">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<b:th text="nowrap">Default value</b:th>
			<th>Description</th>
			<th>Sanitized</th>
		</tr>	
	</thead>
	<tbody>
		<tr>
			<td>library</td>
			<td>(none)</td>
			<td>Defaults to <code>application.Bootstrap.StyleSheetLibrary.default</code></td>
			<td>N/A</td>
		</tr>
		
		<tr>
			<td>media</td>
			<td>all</td>
			<td>Pass through of <code>media=</code> attribute</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		
		<tr>
			<td>name</td>
			<td>Required</td>
			<td>This is a relative path, the library is prepended. If name is blank, then library better have complete target</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>rel</td>
			<td>stylesheet</td>
			<td>Pass through of <code>rel=</code> attribute</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>



<h2>Example</h2>

<p>If this is working right, then <span class="birthday">Birthday</span> will be in a special color</p>



<h3>Javascript</h3>

<p>These must be inside of b:head.</p>

<p>This is used for local Javascript libraries</p>

<b:panel look="info" title="Attributes of <b:outputScript>">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<b:th text="nowrap">Default value</b:th>
			<th>Description</th>
			<th>Sanitized</th>
		</tr>	
	</thead>
	<tbody>
		<tr>
			<td>library</td>
			<td>(none)</td>
			<td>Defaults to <code>application.Bootstrap.ScriptLibrary.default</code>.</td>
			<td>N/A</td>
		</tr>
		<tr>
			<td>name</td>
			<td>(none)</td>
			<td>This is a relative path, the library is prepended. If name is blank, library better have complete target.
				This is slightly different from JSF.
				If no name set, then the content between the start and end tags is rendered in style tags. Provided that processed and rendered are true.
			</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td><a href="~/common">See Common Features</a></td>
			<td></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>


