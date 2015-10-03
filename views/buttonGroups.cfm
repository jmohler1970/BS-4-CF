
<cfimport prefix="b" taglib="../bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">ButtonGroups Examples</b:h1>
		<p>&lt;buttonToolbar&gt; &amp; &lt;buttonGroup&gt;</p>
	</b:column>	
</b:row>





<b:h2>Introduction</b:h2>



<h3>&lt;b:buttonToolbar&gt;</h3>

<b:panel look="info" title="Attributes of <b:buttonToolbar>">

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
			<td>rendered</td>
			<td>true</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>size</td>
			<td>(none)</td>
			<td>reserved for future use</td>
			<td>N/A</td>
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



<h3>&lt;b:buttonGroup&gt;</h3>

<b:panel look="info" title="Attributes of <b:buttonGroup>">

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
			<td>(none)</td>
			<td><a href="?view=common">See Common Features</a></td>
			<td></td>
		</tr>
		<tr>
			<td>justified</td>
			<td>false</td>
			<td>Stretch buttons over the width of the container.</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>orientation</td>
			<td>horizontal</td>
			<td>As opposed to Vertical.</td>
			<td>Must be their not set, horizontal, or vertical</td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
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
			<td>size</td>
			<td>(none)</td>
			<td>How much padding should this well have</td>
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




<h2>Example</h2>


<b:buttonToolbar>
	<b:buttonGroup>
		<b:button value="1" />
		<b:button value="2" />
	</b:buttonGroup>
	<b:buttonGroup>
		<b:button value="3" />
		<b:button value="4" />
		<b:button value="5" />
		<b:button value="6" />
		<b:button value="7" />
		<b:button value="8" />
	</b:buttonGroup>
	<b:buttonGroup>
		<b:button value="9" />
	</b:buttonGroup>
</b:buttonToolbar>



<h3>Mixed buttons</h3>


<b:buttonGroup>
	<b:button look="success" value="500" />
	<b:button look="primary" icon="print" />
	<b:dropButton look="warning" value="DropButton">
		<b:navLink href="##" value="Action" />
		<b:navLink href="##" value="Another Action" />
		<b:navLink />
		<b:navLink href="##" value="Something else here" />
	</b:dropButton>
</b:buttonGroup>



<h3>Radio buttons</h3>




<b:buttonGroup toggle="true" name="sample">
	<b:selectItem value="1" display="Default"	id="auto"	selected="true" />
	<b:selectItem value="1" display="Primary"	id="auto"	look="primary" />
	<b:selectItem value="1" display="Info"		id="auto"	look="info" />
	<b:selectItem value="1" display="Success"	id="auto"	look="success" />
	<b:selectItem value="1" display="Warning"	id="auto"	look="warning" />
	<b:selectItem value="1" display="Danger"	id="auto"	look="danger" />
</b:buttonGroup>



