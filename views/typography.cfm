
<cfimport prefix="b" taglib="../bootstrap">



<b:row>
	<b:column span="12">	

		<b:h1 pageHeader="true">Typography</b:h1>
		<p>&lt;b:h1&gt;, &lt;b:h2&gt;, &lt;b:h3&gt;, &lt;b:h4&gt;, &lt;b:h5&gt;, &lt;b:h6&gt;, &lt;b:p&gt;, &lt;b:blockquote&gt;, &lt;b:outputText&gt;</p>
	</b:column>	
</b:row>



<b:h2>Introduction</b:h2>


<b:panel look="info" title="Attributes for all typographical tags">

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
			<td>Yes</td>
		</tr>
		<tr>
			<td>binding</td>
			<td>(none)</td>
			<td>Try to find the value of this tag in the <code>rc.*</code> scope. If found then use its value, else use the content between the tags.</td>
			<td>See generatedContent</td>
		</tr>
		<tr>
			<td>data-*</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>isSafeHTML</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>pageHeader</td>
			<td>false</td>
			<td>For <code>&lt;b:h1&gt;</code> only. This wraps content in div with page header. 
				<b:label look="Info" value="BS4" /> This is expected to be removed in Bootstrap 4. BS-4-CF will continue to generate this class, but it may have no effect.
			</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>lead</td>
			<td>false</td>
			<td>This is for <code>&lt;b:p&gt;</code> only. Adds lead class.</td>
			<td>Must evaluate to boolean. Lead is treated as true</td>
		</tr>
		<tr>
			<td>ng-*</td>
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>on*</td>
			<td>(none)</td>
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
			<td>reverse</td>
			<td>false</td>
			<td>This is for <code>&lt;b:blockquote&gt;</code> only. This puts the <code>&lt;blockquote&gt;</code> bar on the opposite of its normal position.</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>static</td>
			<td>false</td>
			<td>This is for <code>&lt;b:p&gt;</code> only. This is for static class for use inside of forms. 
				See <b:commandLink action="?view=forms" look="link">Forms</b:commandLink> for more examples.</td>
			<td>Must evaluate to boolean</td>
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
			<td>(none)</td>
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


<cfset rc = { heading = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium magna in sem pharetra, gravida tristique nulla ultricies. Suspendisse ornare nulla quis tempus dictum. Random <b> tag. It should be escaped. In at ipsum ut sapien efficitur dictum sed a nibh. Nunc convallis at ligula sed porta. <> ' Cras convallis turpis sed eleifend fringilla." }>






<h2>Examples</h2>



<b:h1 pageHeader="true">I am a page header. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:h1>
<b:h1 onmouseover="alert('Hi, mom!')">I am h1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:h1>
<b:h2>I am h2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:h2>
<b:h3>I am h3. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:h3>
<b:h4>I am h4. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:h4>
<b:h5>I am h5. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:h5>
<b:h6>I am h6. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:h6>
<b:p>I am p. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:p>
<b:p lead="true">I am p with lead. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:p>
<b:blockquote>I am blockquote. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:blockquote>


<h3>&lt;b:outputText&gt; Example</h3>


<p><b:outputText binding="heading" /></p>
<!-- you should have just done the binding to p -->



<h3>Rendered is false</h3>

<b:well>

	<b:h1 binding="heading" rendered="false" />
	<b:h2 binding="heading" rendered="false" />
	<b:h3 binding="heading" rendered="false" />
	<b:h4 binding="heading" rendered="false" />
	<b:h5 binding="heading" rendered="false" />
	<b:h6 binding="heading" rendered="false" />
	<b:p binding="heading" rendered="false" />
	<b:blockquote binding="heading" rendered="false" />

</b:well>


<h3>Processed is false</h3>

<b:well>

	<b:h1 binding="heading" processed="false" />
	<b:h2 binding="heading" processed="false" />
	<b:h3 binding="heading" processed="false" />
	<b:h4 binding="heading" processed="false" />
	<b:h5 binding="heading" processed="false" />
	<b:h6 binding="heading" processed="false" />
	<b:p binding="heading" processed="false" />
	<b:blockquote binding="heading" processed="false" />

</b:well>


<h2>Stress test is false</h2>
<p>There over 100 rows inside of the hidden well. Check you debug code to see how fast it ran</p>

<b:well rendered="false">

	<cfloop from = "0" to="101" index="i">
		<b:h1 binding="heading" />
		<b:h2 binding="heading" />
		<b:h3 binding="heading" />
		<b:h4 binding="heading" />
		<b:h5 binding="heading" />
		<b:h6 binding="heading" />
		<b:p binding="heading" />
		<b:blockquote binding="heading" />
	</cfloop>

</b:well>



      