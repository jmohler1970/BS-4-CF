
<cfimport prefix="b" taglib="../_bootstrap">



<b:row>
	<b:column span="12">	

		<b:h1 pageHeader="true">Typography</b:h1>
		<p>&lt;b:h1&gt;, &lt;b:h2&gt;, &lt;b:h3&gt;, &lt;b:h4&gt;, &lt;b:h5&gt;, &lt;b:h6&gt;, &lt;b:p&gt;, &lt;b:blockquote&gt;, &lt;b:outputText&gt;</p>
	</b:column>	
</b:row>



<b:h1 key="Introduction" />


<b:panel look="info" title="Attributes for all typographical tags">

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
			<td><b:yesnoFormat value="1" /></td>
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
			<td></td>
			<td>data-*</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>footer</td>
			<td>(none)</td>
			<td>For <code>&lt;b:blockquote&gt;</code> only. This generates footer content</td>
			<td><b:label look="danger" key="No" /></td>
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
			<td><b:label>Bootstrap</b:label></td>
			<td>lead</td>
			<td>false</td>
			<td>This is for <code>&lt;b:p&gt;</code> only. Adds lead class.</td>
			<td>Must evaluate to boolean. Lead is treated as true</td>
		</tr>
		<tr>
			<td></td>
			<td>ng-*</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>on*</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>pageHeader</td>
			<td>false</td>
			<td>For <code>&lt;b:h1&gt;</code> only. This wraps content in div with page header. 
				<b:label look="Info" value="BS4" /> This is expected to be removed in Bootstrap 4. Bootstrap for ColdFusion will continue to generate this class, but it may have no effect.
			</td>
			<td>Must evaluate to boolean</td>
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
			<td><b:label>Bootstrap</b:label></td>
			<td>reverse</td>
			<td>false</td>
			<td>This is for <code>&lt;b:blockquote&gt;</code> only. This puts the <code>&lt;blockquote&gt;</code> bar on the opposite of its normal position.</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>static</td>
			<td>false</td>
			<td>This is for <code>&lt;b:p&gt;</code> only. This is for static class for use inside of forms. 
				See <b:commandLink action="~/docs/forms" look="link">Forms</b:commandLink> for more examples.</td>
			<td>Must evaluate to boolean</td>
		</tr>
		<tr>
			<td></td>
			<td>style</td>
			<td>(none)</td>
			<b:td key="common" />
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>styleClass</td>
			<td>(none)</td>
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


<cfset rc = { heading = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium magna in sem pharetra, gravida tristique nulla ultricies. Suspendisse ornare nulla quis tempus dictum. Random <b> tag. It should be escaped. In at ipsum ut sapien efficitur dictum sed a nibh. Nunc convallis at ligula sed porta. <> ' Cras convallis turpis sed eleifend fringilla." }>






<b:h1 key="examples" />




<h2>Headers</h2>


<b:h1 pageHeader="true">I am a page header. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:h1>
<b:h1 >I am h1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:h1>
<b:h2>I am h2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:h2>
<b:h3>I am h3. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:h3>
<b:h4>I am h4. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:h4>
<b:h5>I am h5. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:h5>
<b:h6>I am h6. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:h6>
<b:p>I am p. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:p>
<b:p lead="true">I am p with lead. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:p>
<b:blockquote footer="I am a footer in a blockquote">I am blockquote. Lorem ipsum dolor sit amet, consectetur adipiscing elit. <small>Sed pretium magna in sem pharetra.</small></b:blockquote>


<h3>&lt;b:outputText&gt; Example</h3>


<p><b:outputText binding="heading" /></p>
<!-- you should have just done the binding to p -->


<h2>i18n language file examples</h2>
<p>Your content may vary depending on your current language setting</p>

<b:h1 key="API_DISCLAIMER" />
<b:h2 key="API_DISCLAIMER" />
<b:h3 key="API_DISCLAIMER" />
<b:h4 key="API_DISCLAIMER" />
<b:h5 key="API_DISCLAIMER" />
<b:h6 key="API_DISCLAIMER" />
<b:p key="API_DISCLAIMER" />
<b:blockquote key="API_DISCLAIMER" />



<h3>Rendered is false</h3>

<b:well>

	<b:h1 binding="heading" rendered="false" />
	<b:h2 binding="heading" rendered="false" />
	<b:h3 binding="heading" rendered="false" />
	<b:h4 binding="heading" rendered="false" />
	<b:h5 binding="heading" rendered="false" />
	<b:h6 binding="heading" rendered="false" />
	<b:p binding="heading" rendered="false" />
	<b:blockquote binding="heading" rendered="false" />

</b:well>


<h3>Processed is false</h3>

<b:well>

	<b:h1 binding="heading" processed="false" />
	<b:h2 binding="heading" processed="false" />
	<b:h3 binding="heading" processed="false" />
	<b:h4 binding="heading" processed="false" />
	<b:h5 binding="heading" processed="false" />
	<b:h6 binding="heading" processed="false" />
	<b:p binding="heading" processed="false" />
	<b:blockquote binding="heading" processed="false" />

</b:well>


<h2>Stress test with rendering set to false</h2>
<p>There over 100 rows inside of the hidden well. Check you debug code to see how fast it ran</p>

<b:well rendered="false">

	<cfloop from = "0" to="101" index="i">
		<b:h1 binding="heading" />
		<b:h2 binding="heading" />
		<b:h3 binding="heading" />
		<b:h4 binding="heading" />
		<b:h5 binding="heading" />
		<b:h6 binding="heading" />
		<b:p binding="heading" />
		<b:blockquote binding="heading" />
	</cfloop>

</b:well>



<h2>Cheating</h2>
<p>There over 100 rows inside of the hidden well. Cacheing is also turned on. Check you debug code to see how fast it ran</p>

<b:well rendered="false">

	<cfloop from = "0" to="101" index="i">
		<b:h1 binding="heading" cacheid="cheat" />
		<b:h2 binding="heading" cacheid="cheat" />
		<b:h3 binding="heading" cacheid="cheat" />
		<b:h4 binding="heading" cacheid="cheat" />
		<b:h5 binding="heading" cacheid="cheat" />
		<b:h6 binding="heading" cacheid="cheat" />
		<b:p binding="heading" cacheid="cheat" />
		<b:blockquote binding="heading" cacheid="cheat" />
	</cfloop>

</b:well>

<p>View the cache status tracker to see how well the cacheing worked</p>

 <p><b:commandLink href="~/main/cache" value="Check Cache" look="primary" /></p>
 
 
 <h1>b:verbatim</h1>
 
 <p>The tag you never want to use</p>
 
 
 <p><code>b:verbatim</code> does a simple pass through of its content. It provides no context. For this reason, there is almost always a better tag. <code>b:outputText</code> might be a good alternative. This tag is only included for completeness.</p> 
 
 
 <b:panel look="info" title="Attributes for all typographical tags">

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
			<td><b:label look="danger" key="No" /></td>
		</tr>
		<tr>
			<td></td>
			<td>binding</td>
			<td>(none)</td>
			<td>Try to find the value of this tag in the <code>rc.*</code> scope. If found then use its value, else use the content between the tags.</td>
			<td>See generatedContent</td>
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
	</tbody>
	</b:table>
</b:panel>
 
 
 <h2>Example</h2>
 
 
 <p>This is a sample of text that is being displayed <b:verbatim cacheid="sample">verbatim</b:verbatim>. Note how this would have been better if <code>b:p</code> tag was used</p>
 
 
 
 
      