
<cfimport prefix="b" taglib="../bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Modal Examples</b:h1>
		<p>&lt;b:modal&gt;</p>
	</b:column>	
</b:row>




<b:h2>Introduction</b:h2>


<b:panel look="info" title="Attributes of <b:modal>">

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
			<td>backdrop</td>
			<td>true</td>
			<td>By default, you can close a modal dialog by clicking somewhere outside the modal. Set <code>backdrop="false"</code> to disable this feature. .</td>
		</tr>
		<tr>
			<td>closable</td>
			<td>true</td>
			<td>Can modal be closed. Creates close button on Title bar</td>
		</tr>
		<tr>
			<td>close-on-escape</td>
			<td>true</td>
			<td>By default, users can close modal dialogs by hitting the <kbd>ESC</kbd> key. Set <code>close-on-escape="false"</code> to disable this feature. </td>
		</tr>
		
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>id=</code>.</td>
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
			<td>size</td>
			<td>(none)</td>
			<td>How much padding should this well have</td>
		</tr>

		<tr>
			<td>styleClass</td>
			<td>(none)</td>
			<td>Pass though of CSS class.</td>
		</tr>
		<tr>
			<td>title</td>
			<td>(none)</td>
			<td>Bold Title displayed in Modal's header.</td>
		</tr>


	</tbody>
	</b:table>
</b:panel>


<h2>Example</h2>


<h3>Displays information</h3>

<!-- Button trigger modal -->
<b:button data-toggle="modal" data-target="##myModal" value="Launch demo modal" />



<b:modal id="myModal" title="Modal Example" styleClass="modalPseudoClass">
   <p>One fine body&hellip;</p>
</b:modal>





<h3>With a form</h3>


<!-- Button trigger modal -->
<b:button data-toggle="modal" data-target="##myModalForm" value="Launch demo modal" />


<form class="form-horizontal" action="?view=Modal" method="post">
	<b:modal id="myModalForm" title="Modal Form Example" showSubmit="true" submitValue="I agree">

		<b:formGroup>
			<label for="inputEmail" class="col-lg-2 control-label">Email</label>
			<div class="col-lg-10">
				<input type="text" class="form-control" id="inputEmail" placeholder="Email">
			</div>
		</b:formGroup>
                  
		<b:formGroup>	
			<label for="inputPassword" class="col-lg-2 control-label">Password</label>
			<div class="col-lg-10">
				<input type="password" class="form-control" id="inputPassword" placeholder="Password">
					<b:selectBooleanCheckbox id="checkbox" look="success" checked="true">Checkbox</b:selectBooleanCheckbox>
			</div>
		</b:formGroup>
		
		
		<!--- Submit is automatically taken care of --->					
	</b:modal>
</form>



