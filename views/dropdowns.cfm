
<cfimport prefix="b" taglib="../bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Dropdowns Examples</b:h1>
		<p>View code for details.</p>
	</b:column>	
</b:row>




<b:h2>Introduction</b:h2>

<p>Pulldown menus. They can either be stand alone, or as part of a tab control</p>


<b:panel look="info" title="Attributes of &lt;b:dropdown&gt;">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<b:th text="nowrap">Default value</b:th>
			<th>Description</th>
		</tr>	
	</thead>
	
	<tbody>

		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>id=</code>. </td>
		</tr>
		<tr>
			<td>look</td>
			<td>default</td>
			<td>This does a passthrough to <code>btn-</code>. If <code>look="tab"</code> then no button classes are applied. This is so that to will look proper in a tab.</td>
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
			<td>role</td>
			<td>role</td>
			<td>Pass though of HMTL <code>role=</code></div></td>
		</tr>

	</tbody>
	</b:table>
</b:panel>


<h2>Examples</h2>

<p>This uses <code>&lt;li&gt;</code> to generate content</p>


<b:buttonGroup>
	<b:dropButton value="DropButton">
		<li><a href="#">Action</a></li>	
		<li><a href="#">Another action</a></li>
		<li><a href="#">Something else here</a></li>
		<li><a href="#">Separated link</a></li>
	</b:dropButton>
</b:buttonGroup>

<p>&nbsp;</p>
<h3>Yet another Example</h3>

<p>This is inside of a buttonGroup


<b:buttonGroup>
    <b:button look="success" value="51" />
    <b:button look="primary" icon="phone" value="" />
    <b:dropButton look="warning" value="DropButton">
            <li><a href="#">Action</a></li>
		  <li><a href="#">Another action</a></li>
		  <li><a href="#">Something else here</a></li>
		  <li><a href="#">Separated link</a></li>
    </b:dropButton>
</b:buttonGroup>



<p>&nbsp;</p>
<h3>With nav links</h3>

<p>This uses <code>&lt;b:navLink&gt;</code> to generate content</p>


<b:buttonGroup>
	<b:dropButton value="Dropdown">
		<b:navLink href="##mixtape3" value="Mix tape" />
		<b:navLink href="##action3" value="Action" />
		<b:navLink />
		<b:navLink href="##" value="Something else here" />
	</b:dropButton>
</b:buttonGroup>

<p>Also see tabs<p>


<h3>Invalid Nesting</h3>

<p>If this tag is improperly nested, it will throw an error</p>



<cftry>

	<b:dropButton value="Dropdown">
		<b:navLink href="##mixtape3" value="Mix tape" />
		<b:navLink href="##action3" value="Action" />
		<b:navLink />
		<b:navLink href="##" value="Something else here" />
	</b:dropButton>

<cfcatch>Error was caught.</cfcatch> 

</cftry>


