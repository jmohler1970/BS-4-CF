
<cfimport prefix="b" taglib="../bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	
			<b:h1>Grid System</b:h1>
			<b:p>b:row and b:column</b:p>
		</b:column>	
	</b:row>
</div>


<b:row rendered="false">
	<b:column span="12">


<h2>b:row</h2>



<b:panel look="info" title="Attributes of &lt;b:row&gt;">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<th>Default value</th>
			<th>Description</th>
		</tr>	
	</thead>
	
	<tbody>

		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML id. For selectOneRadio, set this the "auto" so that an id can be created for form and label.</td>
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


<h2>b:column</h2>


<b:panel look="info" title="Attributes of &lt;b:column&gt;">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<th>Default value</th>
			<th>Description</th>
		</tr>	
	</thead>
	
	<tbody>
		
		<tr>
			<td>col-xs</td>
			<td>(none)</td>
			<td>Span for extra small screens. Use <code>span=</code> if possible</td>
		</tr>
		<tr>
			<td>col-sm</td>
			<td>(none)</td>
			<td>Span for small screens. Use <code>span=</code> if possible</td>
		</tr>
		<tr>
			<td>col-md</td>
			<td>(none)</td>
			<td>Span for medium screens. Use <code>span=</code> if possible</td>
		</tr>
		<tr>
			<td>col-lg</td>
			<td>(none)</td>
			<td>Span for large screens. Use <code>span=</code> if possible</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML id. For selectOneRadio, set this the "auto" so that an id can be created for form and label.</td>
		</tr>
		<tr>
			<td>offset</td>
			<td>(none)</td>
			<td>By default, no offset will be done. When provided, this will define the offset for all screen sizes.</td>
		</tr>
		<tr>
			<td>offset-xs</td>
			<td>(none)</td>
			<td>Offset for extra small screens</td>
		</tr>
		<tr>
			<td>offset-sm</td>
			<td>(none)</td>
			<td>Offset for small screens</td>
		</tr>
		<tr>
			<td>offset-md</td>
			<td>(none)</td>
			<td>Offset for medium screens</td>
		</tr>
		<tr>
			<td>offset-lg</td>
			<td>(none)</td>
			<td>Offset for large screens</td>
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
			<td>span</td>
			<td>(none)</td>
			<td>How many columns should this content span?  When provided, this will define the span for all screen sizes.</td>
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
<b:p>Don't want your columns to simply stack in smaller devices? Use the extra small and medium device grid classes by adding <code>col-xs="*"</code> <code>col-md="*"</code> to your columns. See the example below for a better idea of how it all works.</b:p>
  
  

<b:row styleClass="show-grid">
	<b:column col-xs="12" 	col-md="8">col-xs="12" col-md="8"</b:column>
	<b:column col-xs="6" 	col-md="4">col-xs="6" col-md="4"</b:column>
</b:row>

<b:row styleClass="show-grid">
	<b:column col-xs="6" 	col-md="4">col-xs="6" col-md="4"</b:column>
	<b:column col-xs="6" 	col-md="4">col-xs="6" col-md="4"</b:column>
	<b:column col-xs="6" 	col-md="4">col-xs="6" col-md="4"</b:column>
</b:row>


<b:row styleClass="show-grid">
	<b:column col-xs="6">col-xs="6"</b:column>
	<b:column col-xs="6">col-xs="6"</b:column>
</b:row>



<!--- Ha, ha, this one won't be rendering on Mondays --->
<b:row rendered="#IIF(DayOfWeek(now())EQ 2, 0, 1)#">
	<b:column col-xs="6">col-xs="6" but only on Mondays</b:column>
	<b:column col-xs="6">col-xs="6" but only on Mondays</b:column>
</b:row>

 


<h2>Example: Mobile, tablet, desktop</h2>
<p>Build on the previous example by creating even more dynamic and powerful layouts with tablet <code>col-sm=</code> attributes.</p>


<b:row styleClass="show-grid">
	<b:column col-xs="12" col-sm="6" 	col-md="8">col-xs="12" 	col-sm="6" col-md="8"</b:column>
	<b:column col-xs="6" 			col-md="4">col-xs="6" 	col-md="4"</b:column>
</b:row>


<b:row styleClass="show-grid">
	<b:column col-xs="6" col-sm="4">col-xs="6" col-sm="4"</b:column>
	<b:column col-xs="6" col-sm="4">col-xs="6" col-sm="4"</b:column>
	

      <!-- Optional: clear the XS cols if their content doesn't match in height -->
      <div class="clearfix visible-xs-block"></div>

	<b:column col-xs="6" col-sm="4">col-xs="6" col-sm="4"</b:column>
</b:row>




<h2>Example: Column wrapping</h2>
<p>If more than 12 columns are placed within a single row, each group of extra columns will, as one unit, wrap onto a new line.</p>


<b:row styleClass="show-grid">

	<b:column col-xs="9">col-xs="9"</b:column>

	<b:column col-xs="4">col-xs="4"<br>Since 9 + 4 = 13 &gt; 12, this 4-column-wide div gets wrapped onto a new line as one contiguous unit.</b:column>
     <b:column col-xs="6">col-xs="6"<br>Subsequent columns continue along the new line.</b:column>
</b:row>



<h2>Responsive column resets</h2>
<p>With the four tiers of grids available you're bound to run into issues where, at certain breakpoints, your columns don't clear quite right as one is taller than the other. To fix that, use a combination of a <code>.clearfix</code> and responsive utility classes.</p>

<b:row styleClass="show-grid">
      <b:column col-xs="6" col-sm="3">
     	col-xs="6" col-sm="3"
		<br>
		Resize your viewport or check it out on your phone for an example.
	</b:column>

     <b:column col-xs="6" col-sm="3">col-xs="6" col-sm="4"</b:column>

      <!-- Add the extra clearfix for only the required viewport -->
      <div class="clearfix visible-xs-block"></div>

     <b:column col-xs="6" col-sm="3">col-xs="6" col-sm="4"</b:column>
	<b:column col-xs="6" col-sm="3">col-xs="6" col-sm="4"</b:column>
</b:row>


<h2>Offsetting columns</h2>
<p>Move columns to the right using <code>offset-md="*"</code> attributes. These classes increase the left margin of a column by <code>*</code> columns. For example, <code>offset-md="4"</code> moves <code>col-md="4"</code> over four columns.</p>

<b:row styleClass="show-grid">
   	<b:column col-md="4">col-md="4"</b:column>
	<b:column col-md="4" offset-md="4">col-md="4" offset-md="4"</b:column>
</b:row>    


<b:row styleClass="show-grid">
    	<b:column col-md="3" offset-md="3">col-md="3" offset-md="3"</b:column>
	<b:column col-md="3" offset-md="3">col-md="3" offset-md="3"</b:column>
</b:row>    


<b:row styleClass="show-grid">
	<b:column col-md="6" offset-md="3">col-md="6" col-md-offset="3"</b:column>
</b:row>    


