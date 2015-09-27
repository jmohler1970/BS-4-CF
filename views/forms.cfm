
<cfimport prefix="b" taglib="../bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Form Examples</b:h1>
		<p>&lt;b:formgroup&gt;, &lt;fieldset&gt;</p>
	</b:column>	
</b:row>




<b:h2>Introduction</b:h2>

<p>Bootstrap for ColdFusion puts only a few wrappers around form elements. The reason is simple. There are simply too many form libraries out there to try to support. Hence. only the basics are included.</p>



<b:h2>b:formGroup<a id="formgroup"></a></b:h2>

<b:panel look="info" title="Attributes of <b:formgroup>">

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
			<td><b:label look="danger">No</b:label> this is often more than the default value as set in antisamy. Make sure that the inner content is clean. Having said all that, it is preferable to use the &lt;b:td&gt; and &lt;b:th&gt; inside of this tag</td>
		</tr>

		<tr>
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of HTML disabled</td>
			<td>Must evaluate to boolean. "disabled is treated as true</td>
		</tr>
		<tr>
			<td>display</td>
			<td>(none)</td>
			<td>Reserved for future use</td>
			<td>N/A</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML id.</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>

		<tr>
			<td>processed</td>
			<td>true</td>
			<td>This like a <code>&lt;cfif&gt;</code></td>
			<td>Must evaluate to boolean</td>
		</tr>

		<tr>
			<td>rendered</td>
			<td>true</td>
			<td>This is like <code>&lt;cfsilent&gt;</code></td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td>tooltip</td>
			<td>(none)</td>
			<td>Pass though of title</td>
			<td><code>encodeForHTMLAttribute()</code></td>
		</tr>
	</tbody>
	</b:table>
</b:panel>


<p>Individual form controls automatically receive some global styling. All textual <code>&lt;input&gt;</code>, <code>&lt;textarea&gt;</code>, and <code>&lt;select&gt;</code> elements with <code>.form-control</code> are set to <code>width: 100%;</code> by default. Wrap labels and controls in <code>b:form-group</code> for optimum spacing.</p>



<b:well>

	<form>
		<b:formGroup>
			<label for="exampleInputEmail1">Email address</label>
			<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
		</b:formGroup>
		
		<b:formGroup>
			<label for="exampleInputPassword1">Password</label>
			<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
		</b:formGroup>
		
	  
	  	<b:formGroup>
	  		<label for="exampleInputFile">File input</label>
	  		<input type="file" id="exampleInputFile">
	  		<p class="help-block">Example block-level help text here.</p>
	  	</b:formGroup>
	
	  	<!--- This one won't be showing up --->
	  	<b:formGroup rendered="false">
	  		<label for="exampleInputFile">File input</label>
	  		<input type="file" id="exampleInputFile">
	  		<p class="help-block">Example block-level help text here.</p>
	  	</b:formGroup>
	
	
	  	<div class="checkbox">
	  		<label>
	  			<input type="checkbox"> Check me out
	  		</label>
	  	</div>
	  
		<b:commandButton value="Submit" />
	</form>

</b:well>





<h2>Conversion Summary</h2>
<p>Supported tags include</p>

<b:panel look="info" title="Conversion Chart">

<b:table bordered="true" condensed="false">
<b:tr>
	<b:th>Tag</b:th>
	<b:th>HTML equiv</b:th>
	<b:th>Notes</b:th>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:button value="Save"&gt;</code></b:td>
	<b:td><code>&lt;button type="button" class="btn"&gt;Save&lt;/button&gt;</code></b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:commandButton value="Save"&gt;</code></b:td>
	<b:td><code>&lt;button type="submit" class="btn"&gt;Save&lt;/button&gt;</code></b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:fieldset legend="My Legend"&gt;</code></b:td>
	<b:td><code>&lt;fieldset&gt;<br />&nbsp; &lt;legend&gt;My Legend&lt;/legend&gt;</code></b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:formGroup&gt;</code></b:td>
	<b:td><code>&lt;div class="form-group"&gt;</code></b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:selectItem&gt;</code></b:td>
	<b:td><code>&lt;option&gt;</code></b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:selectItems query="#rc.qryData#"&gt;</code></b:td>
	<b:td>
		<code>&lt;cfoutput query="rc.qryData"&gt;<br />&nbsp; &lt;option&gt;</code>
		<br />
		OR
		<br />
		<code>&lt;cfselect&gt;</code>
	</b:td>
	<b:td>The # is required for the BS-4-CF version. It is not present in the original. You still need to wrap this in either selectOneMenu or SelectMultiMenu</b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:selectOneMenu&gt;</code></b:td>
	<b:td><code>&lt;select type="form-control"&gt;</code>
	<br />
	OR
	<br />
	<code>&lt;div class="col-lg-*"&gt;<br />&nbsp; &lt;select type="form-control"&gt;</code>
	</b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:selectManyMenu&gt;</code></b:td>
	<b:td><code>&lt;select class="form-control" multiple="multiple"&gt;</code></b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td><code>&lt;b:selectManyMenu styleClass="select2"&gt;</code></b:td>
	<b:td><code>&lt;select class="form-control select2" multiple="multiple"&gt;</code></b:td>
	<b:td>Select2 is a great tool for making multi selects much smarter</b:td>
</b:tr>


</b:table>




<p>Note: <code>&lt;b:label&gt;</code> refers to Bootstrap labels NOT the label tag that goes along with form fields</p>


</b:panel>



	
	




