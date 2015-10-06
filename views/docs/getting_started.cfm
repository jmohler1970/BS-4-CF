
<cfimport prefix="b" taglib="../_bootstrap">




<div class="page-header">
	<b:row>
		<b:column span="12">	
			<b:h1>Getting Started</b:h1>
		</b:column>	
	</b:row>
</div>


<h2>Requirements</h2>


<h2>Why use this tag library?</h2>

<p>This library promotes a relaxed style of writing Bootstrap / ColdFusion code. The code becomes much more intuitive and self describing, and therefore easier to maintain.</p>

<b:h3>Without Bootstrap for ColdFusion</b:h3>
<pre>
&lt;cfif showme&gt;	
     &lt;button type="button" class="btn btn-default"&gt;&lt;i class="glyphicon glyphicon-floppy-disk&gt;&lt;/i&gt;&lt;cfoutput&gt;#rc.savelabel#&lt;cfoutput&gt;&lt;/button&gt;
&lt;/cfif&gt;	
    
</pre>	


<b:h3>With Bootstrap for ColdFusion</b:h3>


<pre>
&lt;b:button rendered="#showme#" binding="savelabel" icon="floppy-disk /&gt;	
</pre>


<p>Whenever you have a tag that has too be a little bit smarter because of Bootstrap, use one of these custom tags. There is no requirement that all tags be converted. If has been the experience of this developer that these tags are most troublesome.</p>


<ol>
	<li>&lt;b:row&gt;</li>
	<li>&lt;b:column&gt;</li>
	<li>&lt;b:commandButton&gt;</li>
	<li>&lt;b:tab&gt;</li>
	<li>&lt;b:tabView&gt;</li>
	<li>&lt;b:badge&gt;</li>
	<li>&lt;b:label&gt;</li>
	<li>&lt;b:commandLink&gt; (&lt;a href=)</li>
	<li>&lt;b:icon&gt;</li>
</ol>


<p>In addition to making code more readable, you will also be writing fewer lines of code. All around productivity improvement!</p>


<b:h2>Installation</b:h2>

<p>This package has been tested on ColdFusion 11, but will probably work on lower versions</p>


<p>&lt;cfimport&gt; allows for tag libraries to be anywhere and be aliased to any prefix. This documentation uses the `b:` prefix, but any can be used. Suggestions include:</p>

<ul>
	<li>&lt;b:tag&gt;</li><!--- Just like bootsfaces --->
	<li>&lt;b3:tag&gt;</li><!--- For Bootstrap version 3 --->
	<li>&lt;bs:tag&gt;</li><!--- For Bootstrap --->
	<li>&lt;boot:tag&gt;</li><!--- You will just have to guess the strap part --->
	<li>&lt;bootstrap:tag&gt;</li><!--- Just spell it all out --->
</ul


<p>Then add the following to <code>application.cfc</code></p>

<pre>
function onApplicationStart()	{
	application.Bootstrap = {
				
		// Antisamy options
		isSafeHTML		= ["buttongroup","buttontoolbar","column","container","dropmenu","fieldset","formgroup","head",
							"jumbotron","modal","navbar","navbarlinks","navlink","panel","row","table","tabview","tr","well"],	// these tags to not run through getSafeHTML		
		profile			= "",	// blank means use system default
		throwOnError		= false,	// Default behavior for getSafeHTML()
		
	
		actionRoot 		= cgi.script_name,
		validLook			= ["", "link", "default", "primary", "success", "info", "warning", "danger"], // There does not guarantee they are valid	
		
		iconLibrary		= {"default" = "glyphicon glyphicon-", "awesome" = "fa fa-", "jquery-ui" = "ui-icon ui-icon-"}, 		// be sure to include ending dashes
		imageLibrary		= {"default" = replace(cgi.script_name, "/index.cfm", "") & "/assets/"},							// used by b:graphicImage
		styleSheetLibrary	= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"},				// used by b:outputStyleSheet
		scriptLibrary		= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js", local="assets/"}	// used by b:outputScript
		};
	
		
		
	} // end onApplicationStart

</pre>	


<b:panel look="info" title="Application Variables">

	<b:table>
	<thead>
		<tr>
			<th>Variable</th>
			<th>Used in tags</th>
			<th>Description</th>
		</tr>	
	</thead>
	<tbody>
		<tr>
			<td>application.Bootstrap.actionRoot</td>
			<td><code>b:commandLink</code></td>
			<td>Used to create href links that stay within the current application</td>
		</tr>
		
		<tr>
			<td>application.Bootstrap.IconLibrary</td>
			<td><code>b:button</code>, <code>b:commandButton</code>, <code>b:commandLink</code>, <code>b:icon</code>, <code>b:navlink</code></td>
			<td>Sets the boiler-plate CSS class.</td>
		</tr>
		<tr>
			<td>application.Bootstrap.ImageLibrary</td>
			<td><code>b:graphicImage</code></td>
			<td>Sets path to the image resource</td>
		</tr>
		<tr>
			<td>application.Bootstrap.StyleSheetLibrary</td>
			<td><code>b:ouptutStylesheet</code></td>
			<td>Sets path to the CSS resource</td>
		</tr>
		<tr>
			<td>application.Bootstrap.ScriptLibrary</td>
			<td><code>b:outputScript</code></td>
			<td>Sets path to the JavaScript resource</td>
		</tr>
		
			
	</tbody>
	
	</b:table>
</b:panel>	



<h2>Common Attributes</h2>


<a id="bind"></a>
<b:h3>Using Binding</b:h3>

<p>Bootstrap for ColdFusion was written with frameworks such as FW/1 by Sean Corfield in mind. All of the variables that are outputted should be in the <code>rc</code> scope. We can take advantage of that and make our code much simple. Consider the following</p>


<b:h3>Without Bootstrap for ColdFusion</b:h3>
<pre>
&lt;button type="button" class="btn btn-default"&gt;&lt;cfoutput&gt;#rc.savelabel#&lt;cfoutput&gt;&lt;/button&gt;	
</pre>	


<b:h3>With Bootstrap for ColdFusion</b:h3>
<pre>
&lt;b:button binding="savelabel" /&gt;	
</pre>


<p>&nbsp;</p>


<b:h3>Using Processed</b:h3>
<p><code>&lt;cfif&gt;</code> is used to conditionally show blocks of code. <code>&lt;cfif&gt;</code> can span dozens if not hundreds of lines of code. Bootstrap uses lots and lots of <code>&lt;div&gt;</code> tags. You can find yourself at the end of a large block code with nothing but <code>&lt;/cfif&gt;</code> and <code>&lt;/div&gt;</code>. One small mistake can mean wasting hours finding that stray tag.</p>	


<b:h3>Without Bootstrap for ColdFusion</b:h3>

<pre>
&lt;cfif showme&gt;
	&lt;div class="row"&gt;
		&lt;div class="col-md-4"&gt;

... // hundred lines later

		&lt;/div&gt;
	&lt;/div&gt;
&lt;cfif&gt;	
</pre>


<b:h3>With Bootstrap for ColdFusion</b:h3>


<pre>
&lt;b:row processed="#showme#"&gt;
	&lt;b:column span="4"&gt;

... // hundred lines later
	
	
	&lt;/b:column&gt;
&lt;/b:row&gt;
</pre>


<b:h3>Using Rendered</b:h3>
<p>"Rendered" is similar to processed except that it is like <code>&lt;cfsilent&gt;</code>. The "rendered" option is included for users who are familiar with JSF and want to continue programming using that approach.</p>	


<b:h3>Using Processed</b:h3>

<pre>
&lt;cfset count = 0&gt;

&lt;b:row processed="false"&gt;
	&lt;cfset count++&gt;

	...
	
	
	&lt;/b:column&gt;
&lt;/b:row&gt;

&lt;cfoutput&gt;#count#&lt;/cfoutput&gt; --&gt; outputs 0	
</pre>


<b:h3>Using Rendered</b:h3>


<pre>
&lt;cfset count = 0&gt;

&lt;b:row rendered="false"&gt;
	&lt;cfset count++&gt;

	...
	
	
	&lt;/b:column&gt;
&lt;/b:row&gt;

&lt;cfoutput&gt;#count#&lt;/cfoutput&gt; --&gt; outputs 1
</pre>	



<p>It is recommended that rendered be used as the first attribute.</p>

<p>&nbsp;</p>



<b:h3>Using both Binding &amp; Rendered</b:h3>

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


<b:h3>Without Bootstrap for ColdFusion</b:h3>
<pre>
&lt;cfif showme&gt;	
     &lt;button type="button" class="btn btn-default"&gt;&lt;i class="glyphicon glyphicon-floppy-disk&gt;&lt;/i&gt;&lt;cfoutput&gt;#rc.savelabel#&lt;cfoutput&gt;&lt;/button&gt;
&lt;/cfif&gt;	
    
</pre>	


<b:h3>With Bootstrap for ColdFusion</b:h3>


<pre>
&lt;b:button rendered="#showme#" binding="savelabel" icon="floppy-disk /&gt;	
</pre>

<p>Results</p>


<b:button rendered="#showme#" binding="savelabel" icon="floppy-disk" />	


<!---
<b:h2>Kudos</b:h2>
--->


<b:h2>Roadmap</b:h2>


<ul>
	<li>b:SelectManyCheckbox</li>
	<li>pass through of dir attribute</li>
	<li>pass through of lang attribute</li>
	<li>b:datePicker</li>
	<li>b:pill</li>
	<li>pass though of Mask</li>
	<li>Any tag with binding, should be able to add at least the following ColdFusion formatters
		<ul>
			<li>LSDateFormat()</li>
			<li>LSTimeFormat()</li>
			<li>LSCurrencyFormat()</li>
			<li>LSNumberFormat()</li>
		</ul>	
	
	</li>
</ul>	


<b:h2>License</b:h2>

<pre>
Copyright (c) 2015 James Mohler


Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
</pre>

