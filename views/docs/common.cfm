<cfimport prefix="b" taglib="../_bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Smarter tags</b:h1>

	</b:column>	
</b:row>




<p>All tags share a rich set of common features</p>


<b:panel look="info" title="Attributes for all <b:poll>">

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
			<td>Pass through of content</td>
			<td><b:label look="danger">No</b:label>  Content is assumed to be clean</td>
		</tr>
		<tr>
			<td><b:label look="warning">Ehcache</b:label></td>
			<td>cacheid</td>
			<td>(none)</td>
			<td>When not blank, the content generated within this tags will be cached for the standard timeframe. The overall key is created from
				<code>b:tagname</code> <code>key</code> <code>cacheid</code>. This is done so that it is easier to know which tag is cacheing and because different keys by definition are different 
			</td>
			<td>N/A</td>
		</tr>	
		<tr>
			<td></td>
			<td>data-*</td>
			<td>(none)</td>
			<td>Pass through of HTML5 <code>data-*=</code> attributes.</td>
			<td>
				Keys: <b:label look="danger">No</b:label> 	
				<br />	
				Values <code>encodeForHTMLAttribute()</code>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>id</td>
			<td>auto</td>
			<td>Pass through of HTML id.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>isSafeHTML</td>
			<td>IF exists in<code>application.Bootstrap.isSafeHTML</code></td>
			<td>Controls how content is rendered. Content is assumed to be clean, but it can be cleaned if necessary.
				By setting this to false, all content will be cleaned via <code>getSafeHTML()</code></td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td> <b:label look="success">i18n</b:label></td>
			<td>key</td>
			<td>(none)</td>
			<td>Use for lookup strings in an i18n language file. Also see placeholder and cacheid</td>
			<td>N/A</td>
		</tr>
		<tr>
			<td></td>
			<td>ng-*</td>
			<td>(none)</td>
			<td>Pass through of all AngularJS attributes</td>
			<td class="text-nowrap">
				Keys: <b:label look="danger">No</b:label> 	
				<br />	
				Values <code>encodeForHTMLAttribute()</code>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>on*</td>
			<td>(none)</td>
			<td>Pass through of all Mouse/Pointer events.</td>
			<td>
				Keys: <b:label look="danger">No</b:label> 	
				<br />	
				Values <code>encodeForHTMLAttribute()</code>
			</td>
		</tr>
		<tr>
			<td> <b:label look="success">i18n</b:label></td>
			<td>placeholder</td>
			<td>(none)</td>
			<td>Reserved for future use. Eventually it will be used for substitution points in i18n language files. 
				Data must come in as either single simple value, or as an array. Simple value will be converted to an array.  Also see key</td>
			<td><code>encodeForHTML()</code> for each element in the array.</td>
		</tr>		
		<tr>
			<td></td>
			<td>processed</td>
			<td>true</td>
			<td>This like a <code>&lt;cfif&gt;</code>. If this is set to false, content cacheing will not occur.</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>profile</td>
			<td><code>application.Bootstrap.profile</code></td>
			<td>Application specific profile for Antisamy cleanup. If this is set to blank, then server setting will be used.
				Pass through attribute on <code>getSafeHTML(inString, <b>profile</b>, throwOnError)</code></td>
			<td>Must evaluate to boolean</td>
		</tr>	
		<tr>
			<td></td>
			<td>rendered</td>
			<td>true</td>
			<td>This is like <code>&lt;cfsilent&gt;</code> If this is set to false, content will still be cached</td>
			<td>Must evaluate to boolean</td>
		</tr>

		<tr>
			<td></td>
			<td>style</td>
			<td>(none)</td>
			<td>Pass though of CSS style. Use Bootstrap classes instead if possible</td>
			<td><code>encodeForCSS()</code></td>
		</tr>
		<tr>
			<td></td>
			<td>styleClass</td>
			<td>(none)</td>
			<td>Pass though of CSS class.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of title</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>tooltipPosition</td>
			<td>bottom</td>
			<td>Pass though of <code>data-placement=</code></td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>throwOnError</td>
			<td><code>application.Bootstrap.throwOnError</code></td>
			<td>Pass through attribute on <code>getSafeHTML(inString, profile, <b>throwOnError</b>)</code></td>
			<td>Must evaluate to boolean</td>
		</tr>
	</tbody>
	</b:table>
</b:panel>




<h2>generatedContent</h2>


<b:blockquote isSafeHTML="true">
One of the cooler new features in the next version of ColdFusion is <code>getSafeHTML()</code>. I had seen this mentioned a few times already but it never really clicked in my brain what it was doing. getSafeHTML makes use of the AntiSamy project. It takes user-generated content and replaces unsafe HTML. What is safe and what isn’t? It is totally up to you. The functionality is driven by an XML file (a very complex XML file) that lets you get as granular as you want. Want to support the bold tag but not italics? Fine. Want to support colors for CSS but only some? You can do that.

	<footer><a href="http://www.raymondcamden.com/2014/04/09/getSafeHTML-and-ColdFusion-11">Raymond Camden</a></footer>
</b:blockquote>	


<p>Any tag with inner content has the isSafeHTML attribute. <i>Bootstrap for ColdFusion</i> will then pass the generatedContent through <code>getSafeHTML()</code></p>


<p><b>Also See</b> <a href="http://stackoverflow.com/tags/sanitization/info">http://stackoverflow.com/tags/sanitization/info</a></p>	
	
<b:table>
<thead>
	<tr>
		<th>True by default (Not Sanitized)</th>
		<th>False by default (Sanitized)</th>
		<th>Does not use generatedContent</th>
		<th>Cannot be filtered</th>
	</tr>
</thead>
<tbody>
	<tr>
		<td>
			<code>
			b:column<br />
			b:container<br />
			b:fieldset<br />
			b:formGroup<br />
			b:jumbotron<br />
			b:modal<br />
			b:panel<br />
			b:row<br />
			b:tab<br />
			b:table<br />
			b:tabView<br />
			b:tr<br />
			b:well
			</code>	
		</td>
		<td>
			<code>b:alert<br />
			b:badge<br />
			b:blockquote<br />
			b:button<br />
			b:buttonGroup<br />
			b:buttonToolbar<br />
			b:commandButton<br />
			b:commandLink<br />
			b:dropButton<br />
			b:dropMenu<br />
			b:h1<br />
			b:h2<br />
			b:h3<br />
			b:h4<br />
			b:h5<br />
			b:h6<br />
			b:label<br />
			b:navBar<br />
			b:navBarLinks<br />
			b:navLink<br />
			b:navBar<br />
			b:outputText<br />
			b:p<br />
			b:poll<br />
			b:progressbar<br />
			b:selectBooleanCheckbox<br />
			b:selectManyCheckbox<br />
			b:selectManyMenu<br />
			b:selectOneMenu<br />
			b:selectOneRadio<br />
			b:td<br />
			b:th
			</code>
		</td>
		<td>
			<code>b:graphicImage<br />
			b:icon<br />
			b:include<br />
			</code>
		</td>
		<td>
			<code>b:outputScript<br />
			b:outputStyleSheet<br />
			b:selectItem<br />
			b:selectItems<br />
			</code>
		</td>	
	</tr>	
</tbody>
</b:table>

<p>Adobe ColdFusion 11 has a default string length of 5000. This can be particularly low in many instances</p>				
	
	
<h5>References</h5>	


<h2>data-*</h2>

<p>HTML5 data-* attributes</p>


<h2>id</h2>

<p>If attributes exists and is not blank, it is passed through <code>encodeForHTMLAttribute()</code>.</p>

<h2>isSafeHTML, profile, throwOnError</h2>

<p><b>isSafeHTML</b> overrides the default behavior generatedContent behavior. See chart above to determine if this is true or false by default</p>

<p><b>profile</b> checks the profile that <code>getSafeHTML()</code> will be validating against. ColdFusion 11 ships with a medium strength profile that is used server wide.
	
ColdFusion 11 does an application wide setting. This functionality adds that capability.	
</p>
	
	
<p><b>throwOnError</b> 

If there is unwanted content, this will throw an error. Otherwise it could return an empty string.
This option is not expected to be used much, but it is a native feature of getSafeHTML()
	
See <a href="https://helpx.adobe.com/coldfusion/cfml-reference/coldfusion-functions/functions-e-g/getsafehtml.html">Link</a> for more details

</p>		
	

<h2>on*</h2>

<p>Mouse events</p>

<h2>ng-*</h2>

<p>AngularJS attributes</p>


<h2>processed</h2>

<p>This like a <code>&lt;cfif&gt;</code> If processed is false, none of the inner tags or content is ran. This is the recommended approach</p>


<h2>rendered</h2>

<p>This is like <code>&lt;cfsilent&gt;</code>. All of the inner calculations are still ran. This is a lot like how jsf works and some developers may be more at ease with this approach.</p>


<h2>style</h2>

<p>This is a passthrough of the style attribute and uses <code>encodeForCSS()</code>. Bootstrap provides a rich set of classes.
	It is recommended that developers used the Bootstrap classes rather doing inline styling.
</p>	

<h2>styleClass</h2>

<p>This is the generic class passthough. It uses <code>encodeForHTMLAttribute()</code> It is recommend that semantic attributes be used instead.</p>

<h5>References</h5>


<b:h2>tooltip & tooltipPosition</b:h2>

<p>Tooltip & tooltip Position create three attributes</p>


<pre>
title = ""     			&lt;!-- traditional tool tip tag. If the Bootstrap tooltip fails, then this will revert to standard tooltip --&gt;
data-placement = "bottom"	&lt;!-- location of rich tooltip --&gt;
data-toggle = "tooltip"		&lt;!-- this is the hook used by jQuery to apply the tooltip --&gt;
	
</pre>	



		
		