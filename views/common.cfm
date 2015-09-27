<cfimport prefix="b" taglib="../bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Smarter tags</b:h1>

	</b:column>	
</b:row>




<p>All tags share a rich set of common features</p>


<h2>generatedContent</h2>


<b:blockquote isSafeHTML="true">
One of the cooler new features in the next version of ColdFusion is <code>getSafeHTML()</code>. I had seen this mentioned a few times already but it never really clicked in my brain what it was doing. getSafeHTML makes use of the AntiSamy project. It takes user-generated content and replaces unsafe HTML. What is safe and what isn’t? It is totally up to you. The functionality is driven by an XML file (a very complex XML file) that lets you get as granular as you want. Want to support the bold tag but not italics? Fine. Want to support colors for CSS but only some? You can do that.

	<footer><a href="http://www.raymondcamden.com/2014/04/09/getSafeHTML-and-ColdFusion-11">Raymond Camden</a></footer>
</b:blockquote>	


<p>Any tag with inner content has the isSafeHTML attribute. <i>Bootstrap for ColdFusion</i> will then pass the generatedContent through <code>getSafeHTML()</code>
	
	
<b:table>
<thead>
	<tr>
		<th>True by default (Content will not be cleaned)</th>
		<th>False by default (Content will be cleaned)</th>
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



<b:panel look="info" title="Attributes for all <b:poll>">

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
			<td>id</td>
			<td>auto</td>
			<td>Pass through of HTML id.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
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
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of title</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>tooltipPosition</td>
			<td>(none)</td>
			<td>Pass though of title</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>
		
		