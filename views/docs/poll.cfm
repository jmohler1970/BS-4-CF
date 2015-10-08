<cfimport prefix="b" taglib="../_bootstrap">

 
 
<b:row>
	<b:column span="12">	

		<b:h1 pageheader="true">b:poll Examples</b:h1>
		
	</b:column>	
</b:row>



<b:h1 key="introduction" />

<p>Content in the action is checked periodically and then displayed on the screen.</p>


<b:panel look="info" title="Attributes for all <b:poll>">

	<b:table>
	<thead>
		<tr>
			<b:th key="panel_attribute" />
			<th>Default value</th>
			<b:th key="plugin_desc" />
			<th>Sanitized</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>generatedContent</td>
			<td>(none)</td>
			<td>Pass through of content. this is the initial message before the content is AJAX'ed in</td>
			<td><b:label look="danger">No</b:label>  Content is assumed to be clean</td>
		</tr>
		<tr>
			<td>action</td>
			<td>required</td>
			<td>Source for content. Expecting text</td>
			<td><b:label look="danger">No</b:label>  this attributes is assumed to be clean</td>
		</tr>
		<tr>
			<td>id</td>
			<td>auto</td>
			<td>Pass through of HTML id.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>interval</td>
			<td>5000</td>
			<td>How long until content is reloaded in milliseconds</td>
			<td><code>isnumeric()</code> must be true</td>
		</tr>
		
		<tr>
			<td>isSafeHTML</td>
			<td>true</td>
			<td>Controls how content is rendered. Content is assumed to be clean, but it can be cleaned if necessary.
				By setting this to false, all content will be cleaned via <code>getSafeHTML()</code></td>
			<td>Must evaluate to boolean</td>
		</tr>
		
		<tr>
			<td>processed</td>
			<td>true</td>
			<td>This like a <code>&lt;cfif&gt;</code></td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>profile</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td>This is like <code>&lt;cfsilent&gt;</code></td>
			<td>Must evaluate to boolean</td>
		</tr>

		<tr>
			<td>style</td>
			<td>(none)</td>
			<td>Pass though of CSS style. Use Bootstrap classes instead if possible</td>
			<td><code>encodeForCSS()</code></td>
		</tr>
		<tr>
			<td>styleClass</td>
			<td>(none)</td>
			<td>Pass though of CSS class.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>throwOnError</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>timeout</td>
			<td>5000</td>
			<td>How long until request is given up in milliseconds</td>
			<td><code>isnumeric()</code> must be true</td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of title</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>tooltipPosition</td>
			<td>bottom</td>
			<b:td key="common" />
			<td></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>


<h2>Example</h2>


<h3>Minimal Config</h3>

<!---

<b:p><b>The time is now:</b> <b:poll action="./ajax/poll.cfm"><b:icon library="awesome" name="cogs" spin="true" /></b:poll></b:p>

<b:alert isSafeHTML="true"><b>The time is now:</b> <b:poll action="ajax/poll.cfm" tooltip="Hi have a title with some scary characters <>">Loading...</b:poll></b:alert>

--->