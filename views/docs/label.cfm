
<cfimport prefix="b" taglib="../_bootstrap">



<b:row>
	<b:column span="12">	
		<b:h1 pageheader="true">Label &amp; Badge Examples</b:h1>
		<p>&lt;b:badge&gt; and &lt;b:label&gt;</p>
	</b:column>	
</b:row>






<b:h1 key="introduction" />


<b:panel look="info" title="Attributes of <b:badge> & <b:label>">

	<b:table>
	<thead>
		<tr>
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
			<td>Finds data in <code>rc.*</code> scope</td>
			<td>N/A</td>
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
			<td></td>
			<td>look</td>
			<b:td text="nowrap">warning for b:badge<br />
				default for b:label</b:td>
			<td>This is forces to lower case. ColdFusion is case insensitive and this allows that pattern to continue</td>
			<td><code>encodeForHTMLAttribute()</code></td>
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
			<td>text</td>
			<td>Required to not exist</td>
			<td>BootsFaces has this wrong. b:banner and b:label are very similar and should both be powered by value. One of the reasons why this is wrong, is <code>text=</code> is used for context colors. See helpers for more details </td>
			<td>N/A</td>
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
		<tr>
			<td>value</td>
			<td>(none)</td>
			<td>The content of what should be shown. If value is blank, this will still be rendered. This can be useful for Javascript to dynamically updating content.</td>
			<td><code>getSafeHTML()</code></td>
		</tr>


	</tbody>
	</b:table>
</b:panel>





<b:h1 key="examples" />

<!--- Lets load up a query --->
<cfscript>
rc.qryData = QueryNew("Look, Badge, Look2, Badge2");


rc.qryData.AddRow([
	{Look = "default", 	Badge = 1,  Look2 = "success", badge2 = 7 },
	{Look = "info", 	Badge = 15, Look2 = "primary", badge2 = 4 },
	{Look = "warning", 	Badge = 7,  Look2 = "danger",  badge2 = 3 }
	]
	); 
</cfscript>


<b:h2>Bootstrap Palette</b:h2>

<p>These are symantec classes</p>


<b:well>
	<b:table>
	<tbody>
		<cfoutput query="rc.qryData">
			<tr>
				<td><b:label value="#look#" look="#look#" /></td>
				<td><b:badge value="#badge#" /></td>
				<td><b:label value="#look2#" look="#look2#" /></td>
				<td><b:badge value="#badge2#" /></td>
			</tr>
		</cfoutput>	
	</tbody>
	</b:table>
</b:well>


<b:h2>Material Palette</b:h2>

<p>These are physical classes</p>

<b:well>
	<b:table>
	<tbody>
	<cfloop index="styleClass" list="#rc.lstcolor#">
		<tr>
			<td><b:label styleClass="material-#styleClass.trim()# darken-4" value="#styleClass.trim()# darken-4" /></td>
			<td><b:label styleClass="material-#styleClass.trim()# darken-2" value="#styleClass.trim()# darken-2" /></td>
			<td><b:label styleClass="material-#styleClass.trim()#" value="#styleClass.trim()#" /></td>
			<td><b:label styleClass="material-#styleClass.trim()# lighten-2" value="#styleClass.trim()# lighten-2" /></td>	
			<td><b:label styleClass="material-#styleClass.trim()# lighten-4" value="#styleClass.trim()# lighten-4" /></td>	
		</tr>	
		</cfloop>
	</tbody>
	</b:table>
</b:well>


<h2>Inside of headers</h2>
<p>Using plain header tags and static values. This does not vary by language</p>


<pre>&lt;h1&gt;Example heading &lt;b:label value=&quot;New Page&quot; /&gt;&lt;/h1&gt;</pre>


<b:well>
	<h1>Example heading <b:label value="New Page" /></h1>
	<h2>Example heading <b:label value="New Page" /></h2>
	<h3>Example heading <b:label value="New Page" /></h3>
	<h4>Example heading <b:label value="New Page" /></h4>
	<h5>Example heading <b:label value="New Page" /></h5>
	<h6>Example heading <b:label value="New Page" /></h6>
</b:well>





<h2>Inside of headers</h2>
<p>This also uses isSafeHTML and key attributes. Content may vary depending on your current language settings. This is also cached</p>


<pre>&lt;b:h1 isSafeHTML=&quot;true&quot;&gt;Example heading &lt;b:label key=&quot;New_page&quot; cacheid=&quot;h1&quot; /&gt;&lt;/b:h1&gt;</pre>

<b:well>

	<b:h1 isSafeHTML="true">Example heading <b:label key="New_page" cacheid="h1" /></b:h1>
	<b:h2 isSafeHTML="true">Example heading <b:label key="New_page" cacheid="h2" /></b:h2>
	<b:h3 isSafeHTML="true">Example heading <b:label key="New_page" cacheid="h3" /></b:h3>
	<b:h4 isSafeHTML="true">Example heading <b:label key="New_page" cacheid="h4" /></b:h4>
	<b:h5 isSafeHTML="true">Example heading <b:label key="New_page" cacheid="h5" /></b:h5>
	<b:h6 isSafeHTML="true">Example heading <b:label key="New_page" cacheid="h6" /></b:h6>

</b:well>




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

<cfparam name="rc.look" default="primary">
<cfparam name="rc.content" default="#horrible#">


<b:well>

	<form action="?" method="post" class="form-horizontal">
		<b:formGroup>
			<label for="exampleInputEmail1" class="col-sm-3 control-label">Content to be echoed</label>
			
			<b:column span="9">
				<cfoutput>
					<textarea class="form-control" name="content" rows="5">#encodeForHTMLAttribute(rc.content)#</textarea>
				</cfoutput>
			</b:column>	
		</b:formGroup>
		
		<b:formGroup>
			<label for="exampleInputEmail1" class="col-sm-3 control-label">Colors</label>
			
			
			<b:column span="9">
			<b:selectOneMenu name="look" selectedValue="#rc.look#">
				<cfloop index="look" list="primary,warning,info,success,danger">
					<b:selectItem display="#look#" />
				</cfloop>
			</b:selectOneMenu>
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

<pre>Sample label &lt;b:label value=&quot;#rc.content#&quot; /&gt;</pre>

<p>Sample label <b:label value="#rc.content#" look="#rc.look#" /></p>



