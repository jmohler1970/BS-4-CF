
<cfimport prefix="b" taglib="../bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Alert Examples</b:h1>
			<p>View code for details.</p>
		</b:column>	
	</b:row>
</div>




<b:h2>Introduction</b:h2>


<pre>
&lt;b:alert severity=&quot;success&quot;&gt;&lt;strong&gt;Well done!&lt;/strong&gt; You successfully read this important alert message.&lt;/b:alert&gt;
&lt;b:alert severity=&quot;info&quot;&gt;&lt;strong&gt;Heads up!&lt;/strong&gt; This alert needs your attention, but it's not super important. &lt;/b:alert&gt;
&lt;b:alert severity=&quot;warning&quot;&gt;&lt;strong&gt;Warning!&lt;/strong&gt; Best check yo self, you're not looking too good. &lt;/b:alert&gt;
&lt;b:alert severity=&quot;danger&quot;&gt;&lt;strong&gt;Oh snap!&lt;/strong&gt; Change a few things up and try submitting again. &lt;/b:alert&gt;
&lt;b:alert severity=&quot;info&quot; title=&quot;Heads up!&quot;&gt;This alert needs your attention, but it's not super important. &lt;/b:alert&gt;
</pre>


<h3>Results</h3>

<b:alert severity="success"><strong>Well done!</strong> You successfully read this important alert message.</b:alert>
<b:alert severity="info"><strong>Heads up!</strong> This alert needs your attention, but it's not super important. </b:alert>
<b:alert severity="warning"><strong>Warning!</strong> Best check yo self, you're not looking too good. </b:alert>
<b:alert severity="danger"><strong>Oh snap!</strong> Change a few things up and try submitting again. </b:alert>
<b:alert severity="info" title="Heads up!">This alert needs your attention, but it's not super important. </b:alert>


<h3>Dismissable</h3>

<b:alert severity="info" title="Heads up!" closable="true">This alert needs your attention, but it's not super important. </b:alert>

