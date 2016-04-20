
<cfimport prefix="b" taglib="../../vendor/tags/bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	
			<b:h1>Grid System Examples</b:h1>
			<b:p>b:container, b:row and b:column</b:p>
		</b:column>	
	</b:row>
</div>


<b:row tag="section">
	<b:column span="12">


<b:h1 key="introduction" />

<h3>b:container</h3>

<b:blockquote>
	Rows must be placed within a <code>.container</code> (fixed-width) or <code>.container-fluid</code> (full-width) for proper alignment and padding.

	<footer>Quote from <cite>Bootstrap documentation</cite></footer>
</b:blockquote>

<p>This rule is not enforced within Bootstrap for ColdFusion</p>


<b:panel look="info" title="Attributes of <b:container>">

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
			<td><b:label look="danger" key="No" /> This is often longer than antisamy limits. Make sure that the inner content is clean</td>
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
			<td>fluid</td>
			<td>true</td>
			<td>Is this a fluid container?</td>
			<td>Must evaluate to boolean</td>
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
			<td></td>
			<td>tag</td>
			<td>div</td>
			<td>Div tag always works but is generic. Consider setting to <code>section</code>, <code>article</code>, or <code>aside</code>. </td>
			<td><b:label look="danger" key="No" /> Make sure that the inner content is clean</td>
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




<h3>b:row</h3>



<b:panel look="info" title="Attributes of <b:row>">

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
			<td><b:label look="danger" key="No" /> This is often longer than antisamy limits. Make sure that the inner content is clean</td>
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
			<td></td>
			<td>tag</td>
			<td>div</td>
			<td>Div tag always works but is generic. Consider setting to <code>section</code>, <code>article</code>, or <code>aside</code>. </td>
			<td><b:label look="danger" key="No" /> Make sure that the inner content is clean</td>
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


<h3>b:column</h3>


<b:panel look="info" title="Attributes of <b:column>">

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
			<td><b:label look="danger" key="No" /></td>
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
			<td>offset</td>
			<td>(none)</td>
			<td>
				<ul>
					<li>If nothing, then no offset will be provided	
					<li>If this is a simple value, then this will set span for all screen sizes.</li>
					<li>If this comma and colon separated, then it will be parsed to support xs, sm, md, lg, and xl</li>
				</ul>
			</td>
			<td><code>isnumeric()</code></td>
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
			<td>span</td>
			<td>(none)</td>
			<td>
				<ul>
					<li>If this is a simple value, then this will set span for all screen sizes.</li>
					<li>If JSON, then it will be parsed to support xs, sm, md, lg, and xl. JSON requires that its attributes be double quoted. Hence, the ColdFusion attribute must be single quoted. See: http://stackoverflow.com/questions/2275359/jquery-single-quote-in-json-response</li>
				</ul>
			</td>
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
			<td></td>
			<td>tag</td>
			<td>div</td>
			<td>Div tag always works but is generic. Consider setting to <code>section</code>, <code>article</code>, or <code>aside</code>. </td>
			<td><b:label look="danger" key="No" /> Make sure that the inner content is clean</td>
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

	</b:column>
</b:row>
	
	
<h2>Mode Description</h2>


<b:table colHeaders="Platform,Names,&nbsp;,&nbsp;,Cutoffs,&nbsp;,Units">
<tr>
	<td>Zurb Foundation 6</td>
	<td>Small, Medium, Large</td>
	<td></td>
	<td class="text-right">640</td>
	<td class="text-right">1024</td>
	<td></td>
	<td><code>pixel</code></td>
</tr>
<tr>
	<td>Skeleton</td>
	<td>Mobile, Phablet, Tablet, Desktop, Desktop HD</td>
	<td class="text-right">550</td>
	<td class="text-right">750</td>
	<td class="text-right">1000</td>
	<td class="text-right">1200</td>
	<td><code>pixel</code></td>
</tr>

<tr>
	<td>Bootstrap 2</td>
	<td>Phone, Tablet, Desktop</td>
	<td class="text-right"></td>
	<td class="text-right">768</td>
	<td class="text-right">980</td>
	<td class="text-right"></td>
	<td><code>pixel</code></td>
</tr>

<tr class="info">
	<td>Bootstrap 3</td>
	<td>
				
		<span class="visible-xs-inline"><b>Extra Small,</b></span>
		<span class="hidden-xs">Extra Small,</span>
				
		<span class="visible-sm-inline"><b>Small,</b></span>
		<span class="hidden-sm">Small,</span>
				
		<span class="visible-md-inline"><b>Medium,</b></span>
		<span class="hidden-md">Medium,</span>
		
		<span class="visible-lg-inline"><b>Large</b></span>
		<span class="hidden-lg">Large</span>
	</td>
	<td></td>
	<td class="text-right">768</td>
	<td class="text-right">992</td>
	<td class="text-right">1220</td>
	<td><code>pixel</code></td>
</tr>
<tr>
	<td>Bootstrap 4</td>
	<td>Extra Small, Small, Medium, Large, Extra Large</td>
	<td class="text-right">34</td>
	<td class="text-right">48</td>
	<td class="text-right">62</td>
	<td class="text-right">75</td>
	<td><code>em</code></td>
</tr>
<tr>
	<td></td>
	<td></td>
	<td class="text-right">~544</td>
	<td class="text-right">~768</td>
	<td class="text-right">~992</td>
	<td class="text-right">~1200</td>
	<td><code>pixel</code></td>
</tr>	
</b:table>	



 
<b:blockquote footer="James' notes">
	<p>I seldom use large. In day to day programming, I only use 3 sizes. I don't see Zurb Foundation 3 sizes as a problem.
	Bootstrap 4 is a different story. I don't think 5 cutoffs will  be more useful than 3, but I do think that using em instead of pixel could be quite interesting.</p>
	
	<p>I do my development on a circa Aug 2015 iMac. It has a 2560 x 1440 27" display display.</p>
</b:blockquote>


<h3>Current mode</h3>
<b:p styleClass="visible-xs-block">This is Extra Small. This is typical phones (&lt; 768px)</b:p>
<b:p styleClass="visible-sm-block">This is Small. This is typical for tablets (&ge; 768px)</b:p>
<b:p styleClass="visible-md-block">This is Medium. This is typical for non-full size windows on desktops  (&ge; 992px)</b:p>
<b:p styleClass="visible-lg-block">This is Large. This is typical for full size windows on desktop computers (&ge; 1220px)</b:p>




<b:h2>Example: Stacked-to-horizontal</b:h2>

<b:p>Using a single set of <code>span=</code> grid attributes, you can create a basic grid system that starts out stacked on mobile devices and tablet devices (the extra small to small range) before becoming horizontal on desktop (medium) devices. Place grid columns in any <code>b:row</code>.</b:p>


<b:container cacheid="stacked-to-horizontal">

	<b:row styleClass="show-grid">
		<cfloop from="1" to="12" index="i">
			<b:column span="1">span="1"</b:column>
		</cfloop>	
	</b:row>
	
	
	<b:row styleClass="show-grid">
		<b:column span="8">span="8"</b:column>
		<b:column span="4">span="4"</b:column>
	</b:row>
	
	<b:row styleClass="show-grid">
		<b:column span="4">span="4"</b:column>
		<b:column span="4">span="4"</b:column>
		<b:column span="4">span="4"</b:column>
	</b:row>
	
	
	<b:row styleClass="show-grid">
		<b:column span="6">span="6"</b:column>
		<b:column span="6">span="6"</b:column>
	</b:row>

</b:container>



<b:h2>Example: Mobile and desktop</b:h2>
<b:p isSafeHTML="true">Don't want your columns to simply stack in smaller devices? Use the extra small and medium device grid classes by adding <code>span="{sm=*, md=*}"</code> to your columns. See the example below for a better idea of how it all works.</b:p>
  
  

<b:row styleClass="show-grid" cacheid="just a row in the mobile">
	<b:column span='{"xs" : 12, "md" : 8}'>{"xs" : 12, "md" : 8}</b:column>
	<b:column span='{"xs" : 6,  "md" : 4}'>{"xs" : 6, "md" : 4}</b:column>
</b:row>



<b:row styleClass="show-grid">
	<b:column span='{"xs" : 6, "md" : 4}' cacheid="just a column in the mobile">{"xs" : 6, "md" : 4}</b:column>
	<b:column span='{"xs" : 6, "md" : 4}'>{"xs" : 6, "md" : 4}</b:column>
	<b:column span='{"xs" : 6, "md" : 4}'>{"xs" : 6, "md" : 4}</b:column>
</b:row>



<b:row styleClass="show-grid">
	<b:column span='{"xs" : 6}'>{"xs" : 6}</b:column>
	<b:column span='{"xs" : 6}'>{"xs" : 6}</b:column>
</b:row>



<!--- Ha, ha, this one won't be rendering on Mondays --->
<b:row rendered="#IIF(DayOfWeek(now())EQ 2, 0, 1)#">
	<b:column span='{"xs" : 6}'>{"xs" : 6} but only on Mondays</b:column>
	<b:column span='{"xs" : 6}'>{"xs" : 6} but only on Mondays</b:column>
</b:row>

 


<h2>Example: Mobile, tablet, desktop</h2>
<p>Build on the previous example by creating even more dynamic and powerful layouts with tablet <code>sm=</code> attributes.</p>


<b:row styleClass="show-grid">
	<b:column span='{"xs" : 12, "sm" : 6, "md" : 8}'	>{"xs" : 12, "sm" : 6, "md" : 8}</b:column>
	<b:column span='{"xs" : 6,  "md" : 4}'			>{"xs" : 6,  "md" : 4}</b:column>
</b:row>


<b:row styleClass="show-grid">
	<b:column span='{"xs" : 6, "md" : 4}'>{"xs" : 6, "md" : 4}</b:column>
	<b:column span='{"xs" : 6, "md" : 4}'>{"xs" : 6, "md" : 4}</b:column>
	

      <!-- Optional: clear the XS cols if their content doesn't match in height -->
      <div class="clearfix visible-xs-block"></div>

	<b:column span='{"xs" : 6, "sm" : 4}'>{"xs" : 6, "sm" : 4}</b:column>
</b:row>




<h2>Example: Column wrapping</h2>
<p>If more than 12 columns are placed within a single row, each group of extra columns will, as one unit, wrap onto a new line.</p>


<b:row styleClass="show-grid">

	<b:column span='{"xs" : 9}'>{"xs" : 9}</b:column>

	<b:column span='{"xs" : 4}'>{"xs" : 4}<br>Since 9 + 4 = 13 &gt; 12, this 4-column-wide div gets wrapped onto a new line as one contiguous unit.</b:column>
     <b:column span='{"xs" : 6}'>{"xs" : 6}<br>Subsequent columns continue along the new line.</b:column>
</b:row>



<h2>Responsive column resets</h2>
<p>With the four tiers of grids available you're bound to run into issues where, at certain breakpoints, your columns don't clear quite right as one is taller than the other. To fix that, use a combination of a <code>.clearfix</code> and responsive utility classes.</p>

<b:row styleClass="show-grid">
      <b:column span='{"xs" : 6, "sm" : 3}'>
     	{"xs" : 6, "sm" : 3}
		<br />
		Resize your viewport or check it out on your phone for an example.
	</b:column>

     <b:column span='{"xs" : 6, "sm" : 3}'>{"xs" : 6, "sm" : 3}</b:column>

      <!-- Add the extra clearfix for only the required viewport -->
      <div class="clearfix visible-xs-block"></div>

     <b:column span='{"xs" : 6, "sm" : 3}'>{"xs" : 6, "sm" : 3}</b:column>
	<b:column span='{"xs" : 6, "sm" : 3}'>{"xs" : 6, "sm" : 3}</b:column>
</b:row>


<h2>Offsetting columns</h2>
<p>Move columns to the right using <code>offset-md="*"</code> attributes. These classes increase the left margin of a column by <code>*</code> columns. For example, <code>offset-md="4"</code> moves <code>colmd="4"</code> over four columns.</p>

<b:row styleClass="show-grid">
   	<b:column span="4">span="4"</b:column>
	<b:column span="4" offset="4">span="4" offset="4"</b:column>
</b:row>    


<b:row styleClass="show-grid">
    	<b:column span="3" offset="3">span="3" offset="3"</b:column>
	<b:column span="3" offset="3">span="3" offset="3"</b:column>
</b:row>    


<b:row styleClass="show-grid">
	<b:column span="6" offset="3">span="6" offset="3"</b:column>
</b:row>    


