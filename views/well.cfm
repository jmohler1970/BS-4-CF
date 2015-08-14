
<cfimport prefix="b" taglib="../bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Well Examples</b:h1>
			<p>View code for details.</p>
		</b:column>	
	</b:row>
</div>




<b:h2>Introduction</b:h2>


<pre>
&lt;b:row&gt;
	&lt;b:column span=&quot;4&quot;&gt;
		&lt;b:well&gt;Look, I'm in a well!&lt;/b:well&gt;
	&lt;/b:column&gt;

	&lt;b:column span=&quot;4&quot;&gt;
		&lt;b:well size=&quot;sm&quot;&gt;Look, I'm in a small well!&lt;/b:well&gt;
	&lt;/b:column&gt;

	&lt;b:column span=&quot;4&quot;&gt;
		&lt;b:well size=&quot;lg&quot;&gt;Look, I'm in a large well!&lt;/b:well&gt;
	&lt;/b:column&gt;
&lt;/b:row&gt;
</pre>

<h3>Results</h3>


<b:row>
	<b:column span="4">
		<b:well>Look, I'm in a well!</b:well>
	</b:column>

	<b:column span="4">
		<b:well size="sm">Look, I'm in a small well!</b:well>
	</b:column>

	<b:column span="4">
		<b:well size="lg">Look, I'm in a large well!</b:well>
	</b:column>
	
	<b:column span="4">
		<b:well><b:well>Look, I'm in a well in a well!</b:well></b:well>
	</b:column>
</b:row>	

