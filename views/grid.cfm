
<cfimport prefix="b" taglib="../bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	
			<b:h1>Grid System Examples</b:h1>
			<b:p>b:container, b:row and b:column</b:p>
		</b:column>	
	</b:row>
</div>


<b:row>
	<b:column span="12">


<h2>Introduction</h2>

<h3>b:container</h3>

<b:blockquote>
	Rows must be placed within a <code>.container</code> (fixed-width) or <code>.container-fluid</code> (full-width) for proper alignment and padding.

	<footer>Quote from <cite>Bootstrap documentation</cite></footer>
</b:blockquote>

<p>This rule is not enforced within Bootstrap for ColdFusion</p>


<b:panel look="info" title="Attributes of <b:container>">

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
			<td>generatedContent</td>
			<td>(none)</td>
			<td>Pass through of content</td>
			<td><b:label look="danger">No</b:label> this is often longer than antisamy limits. Make sure that the inner content is clean</td>
		</tr>
		<tr>
			<td>fluid</td>
			<td>true</td>
			<td>Is this a fluid container?</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>isSafeHTML</td>
			<td>false</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>profile</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>style</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>styleClass</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>throwOnError</td>
			<td>false</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>tooltipPosition</td>
			<td>bottom</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>




<h3>b:row</h3>



<b:panel look="info" title="Attributes of <b:row>">

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
			<td>generatedContent</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td><b:label look="danger">No</b:label> this is often longer than antisamy limits. Make sure that the inner content is clean</td>
		</tr>

		<tr>
			<td>id</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>isSafeHTML</td>
			<td>false</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>profile</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>style</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>styleClass</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>throwOnError</td>
			<td>false</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>tooltipPosition</td>
			<td>bottom</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>


<h3>b:column</h3>


<b:panel look="info" title="Attributes of <b:column>">

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
			<td>generatedContent</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td><b:label look="danger">No</b:label></td>
		</tr>
		
		<tr>
			<td>colxs</td>
			<td>(none)</td>
			<td>Span for extra small screens. Use <code>span=</code> if possible</td>
			<td><code>isnumeric()</code></td>
		</tr>
		<tr>
			<td>colsm</td>
			<td>(none)</td>
			<td>Span for small screens. Use <code>span=</code> if possible</td>
			<td><code>isnumeric()</code></td>
		</tr>
		<tr>
			<td>colmd</td>
			<td>(none)</td>
			<td>Span for medium screens. Use <code>span=</code> if possible</td>
			<td><code>isnumeric()</code></td>
		</tr>
		<tr>
			<td>collg</td>
			<td>(none)</td>
			<td>This is now set by default. This has to be manually set if needed.</td>
			<td><code>isnumeric()</code></td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>isSafeHTML</td>
			<td>false</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>offset</td>
			<td>(none)</td>
			<td>By default, no offset will be done. When provided, this will define the offset for all screen sizes.</td>
			<td><code>isnumeric()</code></td>
		</tr>
		<tr>
			<td>offsetxs</td>
			<td>(none)</td>
			<td>Offset for extra small screens</td>
			<td><code>isnumeric()</code></td>
		</tr>
		<tr>
			<td>offsetsm</td>
			<td>(none)</td>
			<td>Offset for small screens</td>
			<td><code>isnumeric()</code></td>
		</tr>
		<tr>
			<td>offsetmd</td>
			<td>(none)</td>
			<td>Offset for medium screens</td>
			<td><code>isnumeric()</code></td>
		</tr>
		<tr>
			<td>offsetlg</td>
			<td>0</td>
			<td>This is skipped where there is an offset of 0.</td>
			<td><code>isnumeric()</code></td>
		</tr>
		
		<tr>
			<td>processed</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>profile</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>span</td>
			<td>(none)</td>
			<td>How many columns should this content span?  When provided, this will define the span for all screen sizes.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td>style</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>styleClass</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>throwOnError</td>
			<td>false</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>tooltipPosition</td>
			<td>bottom</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>

	</b:column>
</b:row>
	


<b:h2>Example: Stacked-to-horizontal</b:h2>

<b:p>Using a single set of <code>span=</code> grid attributes, you can create a basic grid system that starts out stacked on mobile devices and tablet devices (the extra small to small range) before becoming horizontal on desktop (medium) devices. Place grid columns in any <code>b:row</code>.</b:p>


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






<b:h2>Example: Mobile and desktop</b:h2>
<b:p>Don't want your columns to simply stack in smaller devices? Use the extra small and medium device grid classes by adding <code>colxs="*"</code> <code>colmd="*"</code> to your columns. See the example below for a better idea of how it all works.</b:p>
  
  

<b:row styleClass="show-grid">
	<b:column colxs="12" 	colmd="8">colxs="12" colmd="8"</b:column>
	<b:column colxs="6" 	colmd="4">colxs="6" colmd="4"</b:column>
</b:row>

<b:row styleClass="show-grid">
	<b:column colxs="6" 	colmd="4">colxs="6" colmd="4"</b:column>
	<b:column colxs="6" 	colmd="4">colxs="6" colmd="4"</b:column>
	<b:column colxs="6" 	colmd="4">colxs="6" colmd="4"</b:column>
</b:row>


<b:row styleClass="show-grid">
	<b:column colxs="6">colxs="6"</b:column>
	<b:column colxs="6">colxs="6"</b:column>
</b:row>



<!--- Ha, ha, this one won't be rendering on Mondays --->
<b:row rendered="#IIF(DayOfWeek(now())EQ 2, 0, 1)#">
	<b:column colxs="6">colxs="6" but only on Mondays</b:column>
	<b:column colxs="6">colxs="6" but only on Mondays</b:column>
</b:row>

 


<h2>Example: Mobile, tablet, desktop</h2>
<p>Build on the previous example by creating even more dynamic and powerful layouts with tablet <code>colsm=</code> attributes.</p>


<b:row styleClass="show-grid">
	<b:column colxs="12" colsm="6" 	colmd="8">colxs="12" 	colsm="6" colmd="8"</b:column>
	<b:column colxs="6" 			colmd="4">colxs="6" 	colmd="4"</b:column>
</b:row>


<b:row styleClass="show-grid">
	<b:column colxs="6" colsm="4">colxs="6" colsm="4"</b:column>
	<b:column colxs="6" colsm="4">colxs="6" colsm="4"</b:column>
	

      <!-- Optional: clear the XS cols if their content doesn't match in height -->
      <div class="clearfix visible-xs-block"></div>

	<b:column colxs="6" colsm="4">colxs="6" colsm="4"</b:column>
</b:row>




<h2>Example: Column wrapping</h2>
<p>If more than 12 columns are placed within a single row, each group of extra columns will, as one unit, wrap onto a new line.</p>


<b:row styleClass="show-grid">

	<b:column colxs="9">colxs="9"</b:column>

	<b:column colxs="4">colxs="4"<br>Since 9 + 4 = 13 &gt; 12, this 4-column-wide div gets wrapped onto a new line as one contiguous unit.</b:column>
     <b:column colxs="6">colxs="6"<br>Subsequent columns continue along the new line.</b:column>
</b:row>



<h2>Responsive column resets</h2>
<p>With the four tiers of grids available you're bound to run into issues where, at certain breakpoints, your columns don't clear quite right as one is taller than the other. To fix that, use a combination of a <code>.clearfix</code> and responsive utility classes.</p>

<b:row styleClass="show-grid">
      <b:column colxs="6" colsm="3">
     	colxs="6" colsm="3"
		<br>
		Resize your viewport or check it out on your phone for an example.
	</b:column>

     <b:column colxs="6" colsm="3">colxs="6" colsm="4"</b:column>

      <!-- Add the extra clearfix for only the required viewport -->
      <div class="clearfix visible-xs-block"></div>

     <b:column colxs="6" colsm="3">colxs="6" colsm="4"</b:column>
	<b:column colxs="6" colsm="3">colxs="6" colsm="4"</b:column>
</b:row>


<h2>Offsetting columns</h2>
<p>Move columns to the right using <code>offset-md="*"</code> attributes. These classes increase the left margin of a column by <code>*</code> columns. For example, <code>offset-md="4"</code> moves <code>colmd="4"</code> over four columns.</p>

<b:row styleClass="show-grid">
   	<b:column colmd="4">colmd="4"</b:column>
	<b:column colmd="4" offsetmd="4">colmd="4" offsetmd="4"</b:column>
</b:row>    


<b:row styleClass="show-grid">
    	<b:column colmd="3" offsetmd="3">colmd="3" offsetmd="3"</b:column>
	<b:column colmd="3" offsetmd="3">colmd="3" offsetmd="3"</b:column>
</b:row>    


<b:row styleClass="show-grid">
	<b:column colmd="6" offsetmd="3">colmd="6" colmdoffset="3"</b:column>
</b:row>    


