
<cfimport prefix="b" taglib="bootstrap">

<cfparam name="url.bootswatch" default="default">



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
			<b:h1>Getting Started</b:h1>
		</b:column>	
	</b:row>
</div>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>


<b:h2>Requirements</b:h2>

<p>This package has been tested on ColdFusion 9, 10, and 11</p>





<b:h2>Recommended Usage</b:h2>

<p>Whenever you have a tag that has too be a little bit smarter because of Bootstrap, use one of these custom tags. There is no requirement that all tags be converted. If has been the experience of this developer that these tags are most troublesome</p>


<ol>
	<li>&lt;b:row&gt;</li>
	<li>&lt;b:column&gt;</li>
	<li>&lt;b:commandButton&gt;</li>
	<li>&lt;b:tab&gt;</li>
	<li>&lt;b:tabView&gt;</li>
	<li>&lt;b:badge&gt;</li>
	<li>&lt;b:label&gt;</li>
	<li>&lt;b:a&gt;</li>
	<li>&lt;b:icon&gt;</li>
</ol>






<a id="bind"></a>
<b:h2>Using Binding</b:h2>

<p>BS-4-CF was written with frameworks such as FW/1 by Sean Corfield in mind. All of the variables that are outputted should be in the <code>rc</code> scope. We can take advantage of that and make our code much simple. Consider the following</p>


<b:h3>Without BS-4-CF</b:h3>
<pre>
&lt;button type="button" class="btn btn-default"&gt;&lt;cfoutput&gt;#rc.savelabel#&lt;cfoutput&gt;&lt;/button&gt;	
</pre>	


<b:h3>With BS-4-CF</b:h3>
<pre>
&lt;b:button binding="savelabel" /&gt;	
</pre>


<p>&nbsp;</p>


<b:h2>Using Rendered</b:h2>
<p><code>&lt;cfif&gt;</code> is used to conditionally show blocks of code. <code>&lt;cfif&gt;</code> can span dozens if not hundreds of lines of code. Bootstrap uses lots and lots of <code>&lt;div&gt;</code> tags. You can find yourself at the end of a large block code with nothing but <code>&lt;/cfif&gt;</code> and <code>&lt;/div&gt;</code>. One small mistake can mean wasting hours finding that stray tag.</p>	


<b:h3>Without BS-4-CF</b:h3>

<pre>
&lt;cfif showme&gt;
	&lt;div class="row"&gt;
		&lt;div class="col-md-4"&gt;

... // hundred lines later

		&lt;/div&gt;
	&lt;/div&gt;
&lt;cfif&gt;	
</pre>


<b:h3>With BS-4-CF</b:h3>


<pre>
&lt;b:row rendered="#showme#"&gt;
	&lt;b:column span="4"&gt;

... // hundred lines later
	
	
	&lt;/b:column&gt;
&lt;/b:row&gt;
</pre>	



<p>It is recommended that rendered be used as the first attribute.</p>

<p>&nbsp;</p>



<b:h2>Using both Binding &amp; Rendered</b:h2>

<p>Including a Glyphicon for good measure. Assume relevant variables have been already setup</p>

<pre>
showme = DayOfWeek(now()) EQ 3 ? 0 : 1;
rc.savelabel = "Save this data";
</pre>

<!--- All this would have been setup somewhere else --->
<cfscript>
showme = true;
rc.savelabel = "Save this data";
</cfscript>


<b:h3>Without BS-4-CF</b:h3>
<pre>
&lt;cfif showme&gt;	
     &lt;button type="button" class="btn btn-default"&gt;&lt;i class="glyphicon glyphicon-floppy-disk&gt;&lt;/i&gt;&lt;cfoutput&gt;#rc.savelabel#&lt;cfoutput&gt;&lt;/button&gt;
&lt;/cfif&gt;	
    
</pre>	


<b:h3>With BS-4-CF</b:h3>


<p>Finally

<pre>
&lt;b:button rendered="#showme#" binding="savelabel" icon="floppy-disk /&gt;	
</pre>

<p>Results</p>


<b:button rendered="#showme#" binding="savelabel" icon="floppy-disk" />	



 <cfinclude template="assets/footer.cfm">


 </b:container>
 


 
 </body>
 </html>