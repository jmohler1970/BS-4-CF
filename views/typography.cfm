
<cfimport prefix="b" taglib="../bootstrap">


<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Typography</b:h1>
			<p>b:h1, b:h2, b:h3, b:h4, b:h5, b:h6, b:p, b:blockquote</p>
		</b:column>	
	</b:row>
</div>


<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>


<b:panel look="info" title="Attributes for all typographical tags">

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
			<td>binding</td>
			<td>(none)</td>
			<td>Try to find the value of this tag in the <code>rc.*</code> scope. If found then use its value, else use the content between the tags.</td>
		</tr>
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
			<td>reverse</td>
			<td>false</td>
			<td>This is for <code>&lt;b:blockquote&gt;</code> only. This puts the <code>&lt;blockquote&gt;</code> bar on the opposite of its normal possition.</td>
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




<cfset rc = { heading = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium magna in sem pharetra, gravida tristique nulla ultricies. Suspendisse ornare nulla quis tempus dictum. Random <b> tag. It should be escaped. In at ipsum ut sapien efficitur dictum sed a nibh. Nunc convallis at ligula sed porta. Cras convallis turpis sed eleifend fringilla. Mauris in pulvinar justo. Cras vehicula vehicula neque nec cursus. Vivamus leo enim, ultricies nec elit a, efficitur fringilla quam. Nam quam ligula, rhoncus at ultrices ut, lacinia eget lacus. Donec lacinia pretium vestibulum. Nulla facilisi. Phasellus hendrerit sit amet libero id feugiat. Mauris libero massa, venenatis at tortor ut, accumsan vestibulum leo. Nullam semper, quam ac rhoncus porttitor, lorem tellus lobortis eros, id aliquam leo tellus bibendum sem. Duis posuere hendrerit ultricies." }>


<h1>Normal Rendering</h1>

<b:well>

	<b:h1 binding="heading" />
	<b:h2 binding="heading" />
	<b:h3 binding="heading" />
	<b:h4 binding="heading" />
	<b:h5 binding="heading" />
	<b:h6 binding="heading" />
	<b:p binding="heading" />
	<b:blockquote binding="heading" />

</b:well>


<h1>Rendered is false</h1>

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


<h1>Processed is false</h1>

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


<h1>Stress test is false</h1>
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



      