
<cfimport prefix="b" taglib="../_bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageHeader="true">Alert Examples</b:h1>
		<p>&lt;b:alert&gt;</p>
	</b:column>	
</b:row>




<b:h1 key="introduction" />


<b:blockquote>
	Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.

	<footer>Quote from <cite>Bootstrap documentation</cite></footer>
</b:blockquote>




<b:panel look="info" title="Attributes of <b:alert>">

	<b:table styleClass="datatables">
	<thead>
		<tr>
			<th></th>
			<b:th key="panel_attribute" />
			<th>Default value</th>
			<b:th key="plugin_desc" />
			<th>Sanitized</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td></td>
			<td>generatedContent</td>
			<td>(none)</td>
			<b:td key="common" />
			<td><b:label look="danger" key="No" /> Make sure that the inner content is clean</td></td>
		</tr>
		<tr>
			<td></td>
			<td>binding</td>
			<td>(none)</td>
			<td>Try to find the value of this tag in the <code>rc.*</code> scope. If found then use its value, else use the content between the tags.</td>
			<td>See generatedContent</td>
		</tr>
		<tr>
			<td><b:label look="warning">Ehcache</b:label></td>
			<td>cacheid</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>closable</td>
			<td>false</td>
			<td>Does this include a close X?</td>
			<td><b:yesnoFormat value="0" /></td>
		</tr>

		<tr>
			<td></td>
			<td>id</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>isSafeHTML</td>
			<td>true</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td> <b:label look="success">i18n</b:label></td>
			<td>key</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td> <b:label look="success">i18n</b:label></td>
			<td>placeholder</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>processed</td>
			<td>true</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>profile</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>

		<tr>
			<td></td>
			<td>rendered</td>
			<td>true</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label look="info">Antisamy</b:label></td>
			<td>throwOnError</td>
			<td>false</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>tooltip</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>tooltipPosition</td>
			<td>bottom</td>
			<b:td key="common" />
			<td></td>
		</tr>

	</tbody>
	</b:table>
</b:panel>



<h2>Basic Example</h2>

<b:alert look="success"><strong>Well done!</strong> You successfully read this important alert message.</b:alert>
<b:alert look="info"><strong>Heads up!</strong> This alert needs your attention, but it's not super important. </b:alert>
<b:alert look="warning"><strong>Warning!</strong> Best check yo self, you're not looking too good. </b:alert>
<b:alert look="danger"><strong>Oh snap!</strong> Change a few things up and try submitting again. </b:alert>
<b:alert look="info" title="Heads up!">This alert needs your attention, but it's not super important. </b:alert>


<h2>Dismissible</h2>

<b:alert look="info" title="Heads up!" closable="true">This alert needs your attention, but it's not super important. </b:alert>



<b:table>
<thead>
	<tr>
		<td>No setting</td>
		<td><code>Closable="true"</code></td>
		<td><code>Closable="false"</code></td>
	</tr>
</thead>
<tbody>
	<tr>
		<td><b:alert look="info" title="Heads up!">This alert needs your attention, but it's not super important. </b:alert></td>
		<td><b:alert look="warning" title="Heads up!" closable="true">This alert needs your attention, but it's not super important. </b:alert></td>
		<td><b:alert look="info" title="Heads up!" closable="false">This alert needs your attention, but it's not super important. </b:alert></td>
	</tr>
</tbody>
</b:table>	



<h2>i18n language file</h2>

<p>This also does cacheing</p>

<b:alert look="danger" key="SERVICE_UNAVAILABLE" closable="true" cacheid="service_unavailable" />

<p>This also does cacheing</p>


<b:alert look="success" key="SITE_UPDATED" closable="true" cacheid="site_updated" />


<p>This does cacheing and has a placeholder. If you refresh the page, the original time will be shown. The real time is <cfoutput>#LSTimeFormat(now(), 'h:mm:ss')#</cfoutput></p>

<b:alert look="warning" key="CLONE_ERROR" placeholder="#LSTimeFormat(now(), 'h:mm:ss')#" closable="true" cacheid="clone_error" />







<b:h1 key="try_me" />


<cfsavecontent variable="horrible">

Your news article

<iframe><b>Bold text</b>
""""""""<>>! script
<script type="text/javascript">destroy_you_website()</script>

<blink>hahahah</blink>

<table>
<tr>
<td>


</cfsavecontent>

<cfparam name="rc.content" default="#horrible#">


<b:well>

	<form action="?" method="post" class="form-horizontal" id="postSubmit">
		<b:formGroup>
			<label for="exampleInputEmail1" class="col-sm-3 control-label">Content to be echoed</label>
			
			<b:column span="9">
				
				<b:wysiwyg name="content"><cfoutput>#rc.content#</cfoutput></b:wysiwyg>
				
			</b:column>	
		</b:formGroup>
		
		
  		
		<b:formGroup>
			<b:column offset="3" span="9">
				<b:commandButton value="Submit" />
			</b:column>
		</b:formGroup>		
	</form>
</b:well>



<h2>Alert with i18n</h2>

<pre>&lt;b:alert key=&quot;ER_YOUR_CHANGES&quot; placeholder=&quot;#rc.content#&quot; /&gt;</pre>

<b:alert key="ER_YOUR_CHANGES" placeholder="#rc.content#" />



