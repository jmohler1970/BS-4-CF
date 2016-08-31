
<cfimport prefix="b" taglib="../../vendor/tags/bootstrap">



<b:row>
	<b:column span="12">	

		<b:h1 pageHeader="true">Panels &amp; Wells</b:h1>
		<p>b:panel &amp; b:well</p>
	</b:column>	
</b:row>


<b:blockquote>
	A card is a flexible and extensible content container. It includes options for headers and footers, a wide variety of content, contextual background colors, and powerful display options.

	If you’re familiar with Bootstrap 3, cards replace our old panels, wells, and thumbnails. Similar functionality to those components is available as modifier classes for cards.


	<footer>Bootstrap 4 alpha documentation
</b:blockquote>



<b:h2>Introduction to Panels</b:h2>



<b:panel look="info" title="Attributes for <b:panel>" cacheid="panel documentation">

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
			<td><b:label look="danger" key="No" />this is often more than the default value as set in antisamy. Make sure that the inner content is clean. Having said all that, it is preferable to use the &lt;b:td&gt; and &lt;b:th&gt; inside of this tag</td>
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
			<td>collapsed</td>
			<td>false</td>
			<td>Is it collapsed</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>collapsible</td>
			<td>false</td>
			<td>can it be collapsed</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td></td>
			<td>contentClass</td>
			<td>(none)</td>
			<td>CSS class for body</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td></td>
			<td>contentStyle</td>
			<td>(none)</td>
			<td>CSS style for body</td>
			<td><code>encodeForCSS()</code></td>
		</tr>
		
		<tr>
			<td></td>
			<td>id</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
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
			<td><b:label>Bootstrap</b:label></td>
			<td>look</td>
			<td>default</td>
			<td>Look and feel of header and edge</td>
			<td>Must be on valid value</td>
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
			<td><b:label>Bootstrap</b:label></td>
			<td>title</td>
			<td>(none)</td>
			<td>Heading for panel</td>
			<td><code>encodeForHTML()</code></td>
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
			<td>titleClass</td>
			<td>(none)</td>
			<td>CSS class for title</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>titleStyle</td>
			<td>(none)</td>
			<td>CSS style for title</td>
			<td><code>encodeForCSS()</code></td>
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

<h2>Examples</h2>

<p>All of the documentation on this site use panels. No additional examples are needed</p>

<p>The panel above even uses cacheing</p>





<h2>Introduction to Wells</h2>

<p>Use the well as a simple effect on an element to give it an inset effect.</p>

<p>This is also the no prefix example. None of the ColdFusion custom tags have a prefix.</p>



<b:well>
    <b:h3>Well Header</b:h3>
    Well content.
</b:well>


<h5>Markup:</h5>

<pre>
&lt;well&gt;
    &lt;h3&gt;Well Header&lt;/h3&gt;
    Well content.
&lt;/well&gt;
</pre>

<p>&nbsp;</p>


<b:panel look="info" title="Attributes of <b:well>">

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
			<td><b:label look="danger" key="No" /> this is often more than the default value as set in antisamy. Make sure that the inner content is clean</td>
		</tr>

		<tr>
			<td></td>
			<td>id</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>isSafeHTML</td>
			<td>true</td>
			<td><a href="~/common">See Common Features</a> </td>
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
	</tbody>
	</b:table>
</b:panel>




<h2>Examples</h2>


<b:row>
	<b:column span="4">
		<b:well size="sm">Look, I'm in a small well!</b:well>
	</b:column>

	<b:column span="4">
		<b:well size="lg">Look, I'm in a large well!</b:well>
	</b:column>
	
	<b:column span="4">
		<b:well><b:well>Look, I'm in a well in a well!</b:well></b:well>
	</b:column>
</b:row>	



<h2>Cached well with key</h2>

<pre>&lt;b:well key=&quot;WELCOME_P&quot; cacheid=&quot;well well well&quot; /&gt;</pre>


<b:well key="WELCOME_P" cacheid="well well well" />




<b:h1 key="try_me" />


<cfsavecontent variable="horrible">
Sors immanis
et inanis,
rota tu volubilis,
status malus,
vana salus
semper dissolubilis,
obumbrata
et velata
michi quoque niteris;
nunc per ludum
dorsum nudum
fero tui sceleris.

</cfsavecontent>


<cfparam name="rc.content" default="#horrible#">

<b:well>

	<form action="?" method="post" class="form-horizontal">
		<b:formGroup>
			<label for="exampleInputEmail1" class="col-sm-3 control-label">Content to be echoed</label>
			
			<b:column span="9">
				<cfoutput>
					<textarea class="form-control" name="content" rows="5">#encodeForHTMLAttribute(rc.content)#</textarea>
				</cfoutput>
			</b:column>	
		</b:formGroup>
		
		
  		
		<b:formGroup>
			<b:column offset="3" span="9">
				<b:commandButton value="Submit" />
			</b:column>
		</b:formGroup>		
	</form>
</b:well>


<pre>&lt;b:well value=&quot;#rc.content#&quot; /&gt;</pre>


<b:well value="#rc.content#" />



