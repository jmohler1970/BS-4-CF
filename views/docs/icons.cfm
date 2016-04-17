
<cfimport prefix="b" taglib="../_bootstrap">







<b:row>
	<b:column span="12">	

		<b:h1 pageHeader="true">Icon Examples</b:h1>
		<p>b:icon</p>
	</b:column>	
</b:row>


<b:h1 key="introduction" />

<p>Brings in the power of Glyphicons, Font Awesome, and <small>jQuery-UI</small>. This tag should not have sub tags</p>

<p>If possible, use the icons that are a part of one of the button tags</p>

<b:panel look="info" title="Attributes of <b:icon>">

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
			<td><b:label>Bootstrap</b:label></td>
			<td>addon</td>
			<td>(none)</td>
			<td>Is this a part of an input.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
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
			<td>data-*</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>flip</td>
			<td>(none)</td>
			<td>For <code>library="awesome"</code>, the icon can be flipped horizontally or vertically. H, V, and blank are valid values</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td></td>
			<td>id</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>library</td>
			<td>default</td>
			<td>Which icon library should be used? This is set via: <code>application.Bootstrap.IconLibrary[attributes.library]</code>. This site uses Glyphicons by default</td>
			<td>N/A</td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>look</td>
			<td>(none)</td>
			<td>What colors should this have.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td></td>
			<td>ng-*</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>on*</td>
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
			<td></td>
			<td>rendered</td>
			<td>true</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>rotate</td>
			<td>(none)</td>
			<td>For <code>library="awesome"</code>, the icon can be rotated left or right. L, R, and blank are valid values</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>

		<tr>
			<td></td>
			<td>size</td>
			<td>(none)</td>
			<td>This uses Font Awesome to do the sizing</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
		<tr>
			<td></td>
			<td>spin</td>
			<td>(none)</td>
			<td>This uses Font Awesome to do spinning</td>
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


<h2>Requirements for b:icon</h2>

<p>In order for sizing and spinning to work, the Font Awesome is required. Glyphicons work with the default Bootstrap package.</p>



<h2>Requirements for b:iconAwesome</h2>

<p>Font Awesome package is required</p>


<b:h2 key="try_me" />

<h3>Example with All Supported libraries</h3>

<p>It is recommended that only one library be used per site.</p>


<b:table colHeaders='Name,Glyphicon,Font Awesome,Foundation Icons,Ionicon,Octicon'>
<tbody>
<cfloop list="tags,book,bookmark,print,camera,flag,download,upload,inbox,repeat,trash,check,credit-card,clock,lock,git-branch,comment,log-out,ios-loop,ios-trash,image,beer,power,alert" index="i">
	<tr>
		<td><cfoutput>#i#</cfoutput></td>
		<td><b:icon library="glyphicon" name="#i#"	size="2x"	/></td>
		<td><b:icon library="awesome" name="#i#"	size="2x"	/></td>
		<td><b:icon library="foundation" name="#i#"	size="2x"	/></td>
		<td><b:icon library="ionicon" name="#i#"	size="2x"	/></td>
		<td><b:icon library="mega-octicon" name="#i#"		/></td>
	</tr>
</cfloop>
</tbody>

</b:table>


				
	
<p>You may want to go to getBootstrap.com to see the icon names. <a href="http://getbootstrap.com/components/" target="_blank">http://getbootstrap.com/components/</a></p>	
	
<b:well>	
	
<cfparam name="rc.icon" default="home" />	
<form class="form-inline">
  <div class="form-group">
    <label for="exampleInputName2">Icon name</label>
    <input type="text" class="form-control" name="icon" placeholder="" value="<cfoutput>#rc.icon.EncodeforHTMLAttribute()#</cfoutput>" />
  </div>
  <button type="submit" class="btn btn-default">Show icons</button>
</form>	

<cfset colHeaders = 'Default look,<code>look="success</code>,<code>look="danger"</code>,<code>size="lg"</code>,<code>size="2x"</code>,<code>spin="true"</code>'>

<b:table colHeaders='#colHeaders#' colFooters='#colHeaders#' rendered="#IIF(rc.icon EQ "", 0, 1)#">
	<tr>
		<td>Glyphicon</td>
		<td><b:icon name="#rc.icon#" look="success"	/></td>
		<td><b:icon name="#rc.icon#" look="danger"	/></td>
		<td><b:icon name="#rc.icon#" size="lg" 		/></td>
		<td><b:icon name="#rc.icon#" size="2x" 		/></td>
		<td><b:icon name="#rc.icon#" spin="true"	/></td>
	</tr>
	
	<tr>
		<td>Font-Awesome</td>
		<td><b:icon library="awesome" name="#rc.icon#" look="success"	/></td>
		<td><b:icon library="awesome" name="#rc.icon#" look="danger"	/></td>
		<td><b:icon library="awesome" name="#rc.icon#" size="lg" 		/></td>
		<td><b:icon library="awesome" name="#rc.icon#" size="2x" 		/></td>
		<td><b:icon library="awesome" name="#rc.icon#" spin="true"		/></td>
	</tr>
</b:table>

</b:well>

<h2>Example with &lt;b:icon&gt;</h2>

<b:table colHeaders='Name,Default look,<code>look="success</code>,<code>look="danger"</code>,<code>size="lg"</code>,<code>size="2x"</code>,<code>spin="true"</code>'>
<tbody>
<cfloop list="tags,book,bookmark,print,camera,flag,download,upload,inbox,repeat,trash,check" index="i">
	<tr>
		<td><cfoutput>#i#</cfoutput></td>
		<td><b:icon name="#i#" /></td>
		<td><b:icon name="#i#" look="success"	/></td>
		<td><b:icon name="#i#" look="danger"	/></td>
		<td><b:icon name="#i#" size="lg" 		/></td>
		<td><b:icon name="#i#" size="2x" 		/></td>
		<td><b:icon name="#i#" spin="true"	/></td>
	</tr>
</cfloop>
</tbody>

</b:table>




<h2>Example with &lt;b:icon&gt; using Font Awesome</h2>

<p>It is recommended that only one library be used per application. The <code>library=""</code> is used for overrides</p>

<b:table colHeaders='Name,Default look,<code>look="success</code>,<code>look="danger"</code>,<code>size="lg"</code>,<code>size="2x"</code>,<code>spin="true"</code>'>
<tbody>
<cfloop list="tags,book,bookmark,print,camera,flag,download,upload,inbox,repeat,trash,check" index="i">
	<tr>
		<td><cfoutput>#i#</cfoutput></td>
		<td><b:icon library="awesome" name="#i#" /></td>
		<td><b:icon library="awesome" name="#i#" look="success"/></td>
		<td><b:icon library="awesome" name="#i#" look="danger"	/></td>
		<td><b:icon library="awesome" name="#i#" size="lg" 	/></td>
		<td><b:icon library="awesome" name="#i#" size="2x" 	/></td>
		<td><b:icon library="awesome" name="#i#" spin="true"	/></td>
	</tr>
</cfloop>
</tbody>

</b:table>



<h2>Example with &lt;b:icon&gt; using jQuery UI</h2>

<p>It is recommended that only one library be used per application. The <code>library=""</code> is used for overrides. jQuery UI uses bitmaps not font (vectors). 
	For this reason it has a hard time resizing or changing colors. It is NOT recommend that his library be used. This sample is included for completeness only</p>

<b:table colHeaders='Name,Default look,<code>lstyleClass="ui-state-highlight"</code>,<code>styleClass="ui-state-error"</code>,<code>spin="true"</code>'>
<tbody>
<cfloop list="tag,note,bookmark,print,image,flag,arrowthickstop-1-s,arrowthickstop-1-n,mail-closed,arrowrefresh-1-w,trash,check" index="i">
	<tr>
		<td><cfoutput>#i#</cfoutput></td>
		<td><b:icon library="jquery-ui" name="#i#" /></td>
		<td><b:icon library="jquery-ui" name="#i#" styleClass="ui-state-highlight"/></td>
		<td><b:icon library="jquery-ui" name="#i#" styleClass="ui-state-error"	/></td>
		<td><b:icon library="jquery-ui" name="#i#" spin="true"	/></td>
	</tr>
</cfloop>
</tbody>

</b:table>


		



