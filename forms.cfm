
<cfimport prefix="b" taglib="bootstrap">



<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	
<head>
	<cfinclude template="assets/head.cfm">  
</head>


<body>


<b:container>


<cfinclude template="assets/menu.cfm">

<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Forms Examples</b:h1>
			<p>View code for details.</p>
		</b:column>	
	</b:row>
</div>




<b:h2>Introduction</b:h2>

<p>BS-4-CF puts only a few wrappers around form elements. The reason is simple. There are simply too many form libraries out there to try to support. Hence. only the basics are included.</p>

Supported tags include


<b:table bordered="true" condensed="false">
<b:tr>
	<b:th>Tag</b:th>
	<b:th>HTML equiv</b:th>
	<b:th>Notes</b:th>
</b:tr>
<b:tr>
	<b:td>&lt;b:button value="Save"&gt;</b:td>
	<b:td>&lt;button type="button" class="btn"&gt;Save&lt;/button&gt;</b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td>&lt;b:commandButton value="Save"&gt;</b:td>
	<b:td>&lt;button type="submit" class="btn"&gt;Save&lt;/button&gt;</b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td>&lt;b:fieldset legend="My Legend"&gt;...</b:td>
	<b:td>&lt;fieldset&gt;&lt;legend&gt;My Legend&lt;/legend&gt;...</b:td>
	<b:td></b:td>
</b:tr>
<b:tr>
	<b:td>&lt;b:formGroup&gt;</b:td>
	<b:td>&lt;div class="form-group"&gt;</b:td>
	<b:td></b:td>
</b:tr>
</b:table>


<p>Note: <code>&lt;b:label&gt;</code> refers to Bootstrap labels NOT the label tag that goes along with form fields</p>


<b:h2>Basic example</b:h2>

Individual form controls automatically receive some global styling. All textual <code>&lt;input&gt;</code>, <code>&lt;textarea&gt;</code>, and <code>&lt;select&gt;</code> elements with <code>.form-control</code> are set to <code>width: 100%;</code> by default. Wrap labels and controls in <code>.b:orm-group</code> for optimum spacing.

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




<cfinclude template="assets/footer.cfm">


</b:container>




</body>
</html>