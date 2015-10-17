
<cfimport prefix="b" taglib="../_bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Dropdowns Examples</b:h1>
		<p>View code for details.</p>
	</b:column>	
</b:row>



<b:h1 key="Introduction" />


<p>Pulldown menus. They can either be stand alone, or as part of a tab control</p>


<b:panel look="info" title="Attributes of <b:dropbutton">

	<b:table>
	<thead>
		<tr>
			<b:th key="panel_attribute" />
			<b:th text="nowrap">Default value</b:th>
			<b:th key="plugin_desc" />
			<th>Sanitized</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td><b:label look="warning">Ehcache</b:label></td>
			<td>cacheid</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>


		<tr>
			<td>id</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>look</td>
			<td>default</td>
			<td>This does a passthrough to <code>btn-</code>. If <code>look="tab"</code> then no button classes are applied. This is so that to will look proper in a tab.</td>
			<td><code>encodeForHTMLAttribute()</code></td>	
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td>role</td>
			<td>role</td>
			<td>Pass though of HMTL <code>role=</code></div></td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>

	</tbody>
	</b:table>
</b:panel>


<b:h1 key="examples" />

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
<h3>Vertical oriented</h3>


<b:buttonGroup orientation="vertical">
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
<h3>With drop up</h3>

<b:buttonGroup orientation="up">
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
<h3>With Disabled and header</h3>

<b:buttonGroup>
	<b:dropButton value="Dropdown">
		<b:navLink href="##mixtape3" value="Mix tape" />
		<b:navLink href="##action3" value="Action" disabled="true" />
		<b:navLink />
		<b:navLink header="Completely different section" />
		<b:navLink href="##" value="Something else here" />
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





<b:h1 key="try_me" />


<cfsavecontent variable="horrible">
Message on button
</cfsavecontent>

<cfparam name="rc.content" default="#horrible#">
<cfparam name="rc.look" default="primary">

<b:well>

	<form action="?" method="post">
		<b:formGroup>
			<label for="exampleInputEmail1">Content to be echoed</label>
			<cfoutput>
			<textarea class="form-control" name="content" rows="5">#encodeForHTMLAttribute(rc.content)#</textarea>
			</cfoutput>
		</b:formGroup>
		
		<b:formGroup>
			<label for="exampleInputEmail1">Content to be echoed</label>
			
			
			
			<b:selectOneMenu name="look" selectedValue="#rc.look#">
				<cfloop index="look" list="primary,warning,info,success,danger">
					<b:selectItem display="#look#" />
				</cfloop>
			</b:selectOneMenu>
		</b:formGroup>	
  
		<b:commandButton value="Generate Dropdown" />
	</form>
</b:well>



<b:buttonGroup>
	<b:dropButton value="#rc.content#" look="#rc.look#">
		<b:navLink href="##mixtape3" value="Mix tape" />
		<b:navLink href="##action3" value="Action" />
		<b:navLink />
		<b:navLink href="##" value="Something else here" />
	</b:dropButton>
</b:buttonGroup>

