
<cfimport prefix="b" taglib="../bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Dropdowns Examples</b:h1>
			<p>View code for details.</p>
		</b:column>	
	</b:row>
</div>




<b:h2>Introduction</b:h2>

<pre>
&lt;b:buttonGroup&gt;
    &lt;b:dropButton value=&quot;DropButton&quot;&gt;
            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;
		  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;
		  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;
		  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;
    &lt;/b:dropButton&gt;
&lt;/b:buttonGroup&gt;
	
</pre>	


<b:buttonGroup>
    <b:dropButton value="DropButton">
            <li><a href="#">Action</a></li>
		  <li><a href="#">Another action</a></li>
		  <li><a href="#">Something else here</a></li>
		  <li><a href="#">Separated link</a></li>
    </b:dropButton>
</b:buttonGroup>


<h2>Yet another Example</h2>

<pre>
	
&lt;b:buttonGroup&gt;
    &lt;b:button look=&quot;success&quot; value=&quot;51&quot; /&gt;
    &lt;b:button look=&quot;primary&quot; icon=&quot;phone&quot; value=&quot;&quot; /&gt;
    &lt;b:dropButton look=&quot;warning&quot; value=&quot;DropButton&quot;&gt;
            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;
		  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;
		  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;
		  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;
    &lt;/b:dropButton&gt;
&lt;/b:buttonGroup&gt;	
</pre>	


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