
<cfimport prefix="b" taglib="../bootstrap">




<div class="page-header">
	<b:row>
		<b:column span="12">	
			<b:h1>Getting Started</b:h1>
		</b:column>	
	</b:row>
</div>




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
</ul>	




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


<b:h2>Using Processed</b:h2>
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
&lt;b:row processed="#showme#"&gt;
	&lt;b:column span="4"&gt;

... // hundred lines later
	
	
	&lt;/b:column&gt;
&lt;/b:row&gt;
</pre>


<b:h2>Using Rendered</b:h2>
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


