
<cfimport prefix="b" taglib="../_bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageHeader="true">AJAX Examples</b:h1>
		<p>&lt;b:commandButton&gt;</p>
	</b:column>	
</b:row>





<b:h1 key="introduction" />

<p>These are examples of AJAX using the existing tags.
	
	
	
<b:h2>Eldarion AJAX</b:h2>


<p>See: <a href="https://github.com/eldarion/eldarion-ajax">https://github.com/eldarion/eldarion-ajax</a></p> 	

<p>See: <a href="http://stackoverflow.com/questions/tagged/eldarion-ajax">http://stackoverflow.com/questions/tagged/eldarion-ajax</a></p>


<b:h3>Example with &lt;b:commandButton&gt;</b:h3>

Code behind the button
<pre class="prettyprint">
&lt;b:commandLink action=&quot;ajax/time?contentType=json&quot; icon=&quot;play&quot; value=&quot;Get Time&quot; look=&quot;primary&quot; 
	styleClass=&quot;ajax&quot;  data-append=&quot;##message&quot; onClick=&quot;$('##message').text('');&quot; /&gt;
</pre>





<b:commandLink action="ajax/time?contentType=json" icon="play" value="Get Time" look="primary" styleClass="ajax"  data-append="##message" onClick="$('##message').text('');" />



<div id="message">Click on button to replace</div>



