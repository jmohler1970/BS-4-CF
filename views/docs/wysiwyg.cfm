
<cfimport prefix="b" taglib="../_bootstrap">



<b:row>
	<b:column span="12">	

		<b:h1 pageHeader="true">WYSIWYG Editor</b:h1>
		<p>b:wysiwig</p>
	</b:column>
</b:row>



<b:h1 key="introduction" />

<p>This is a wrapper around Mindup Bootstrap Wysiwyg (https://github.com/mindmup/bootstrap-wysiwyg)</p>


<b:panel look="info" title="Attributes of <b:wysiwyg>">

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
			<td><b:label look="danger">No</b:label> Make sure that the inner content is clean</td></td>
		</tr>
		<tr>
			<td></td>
			<td>binding</td>
			<td>(none)</td>
			<td>Try to find the value of this tag in the <code>rc.*</code> scope. If found then use its value, else use the content between the tags.</td>
			<td>See generatedContent</td>
		</tr>
		<tr>
			<td></td>
			<td>htmlPlaceholder</td>
			<td>(none)</td>
			<td>Placeholder content for editor. This content disappears as soon as something is typed in.</td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>id</td>
			<td>(none)</td>
			<td>Id defaults to the same value as name. This field is always present</td>
			<td></td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>isSafeHTML</td>
			<td>true</td>
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
			<td></td>
			<td>name</td>
			<td>required</td>
			<td>name field for hidden textarea</td>
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
			<td><a href="~/common">See Common Features</a> </td>
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
			<td><b:label look="info">Antisamy</b:label></td>
			<td>throwOnError</td>
			<td>false</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>useDefaultButtons</td>
			<td>true</td>
			<td>Use built in buttons for editor. If this is set to false, then either buttons have to be manually supplied, or there will be no buttons</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td></td>
			<td>useDefaultJS</td>
			<td>true</td>
			<td>Use built in JavaScript. If this is set to false, then Custom Javascript must be supplied.</td>
			<td>Must evaluate to boolean</td>
		</tr>
	</tbody>
	</b:table>
</b:panel>



<b:h1 key="examples" />





<b:h1 key="try_me" />

<cfparam name="rc.content" default="">
<cfparam name="rc.isSafeHTML" default="1">

<b:well>

	<form action="?" method="post" class="form-horizontal" id="postSubmit">
		<b:formGroup>
			<label class="col-sm-3 control-label">Content to be echoed</label>
			
			<b:column span="9">
				
				<b:wysiwyg name="content" htmlPlaceholder="Type something here..." isSafeHTML="#rc.isSafeHTML#"><cfoutput>#rc.content#</cfoutput></b:wysiwyg>
				
			</b:column>	
		</b:formGroup>
		

		<b:formGroup>
			<label class="col-sm-3 control-label">Is safe HTML</label>
			
			<b:column span="9">
				<b:selectBooleanCheckbox	look="success" checked="#rc.isSafeHTML#" id="auto" name="isSafeHTML" value="1" />			
			</b:column>	
		</b:formGroup>			
  		
		<b:formGroup>
			<b:column offset="3" span="9">
				<b:commandButton value="Submit" />
			</b:column>
		</b:formGroup>		
	</form>
</b:well>



<h2>Alert with i18n</h2>

<pre>&lt;b:alert key=&quot;ER_YOUR_CHANGES&quot; placeholder=&quot;#rc.content#&quot; /&gt;</pre>

<b:alert isSafeHTML="#rc.isSafeHTML#">#rc.content#</b:alert>


<b:blockquote>
	<b>Note</b>

	If you chose to upload an image AND you set isSafeHTML to false, the default, an error may be thrown. This is because ColdFusions default Antisamy settings limit content to 5000 bytes.
</b:blockquote>


