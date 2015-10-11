<cfimport prefix="b" taglib="../_bootstrap">

 
 
<b:row>
	<b:column span="12">	

		<b:h1 pageheader="true">Progress Bar Examples</b:h1>
		<p>b:progress</p>
	</b:column>	
</b:row>



<b:h1 key="introduction" />


<b:panel look="info" title="Attributes of <b:progressbar>">

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
			<td>Yes</td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>animated</td>
			<td>false</td>
			<td>Is the progress bar animated. If this is true, stripped is also treated as true</td>
			<td>must evaluate to boolean</td>
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
			<td>look</td>
			<b:td text="nowrap">(none)</b:td>
			<b:td><b:outputText key="common" /> When blank, the bar looks like primary. Bootstrap does that automatically. This is not a part of the tag library</b:td>
			<td><code>encodeForHTMLAttribute()</code></td>
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
			<td>role</td>
			<td>progressbar</td>
			<td>Pass through of HTML role</td>
			<td></td>
		</tr>
		<tr>
			<td><b:label>Bootstrap</b:label></td>
			<td>stripped</td>
			<td>false</td>
			<td>Is this progress bar stripped.</td>
			<td>must evaluate to boolean</td>
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
			<td></td>
			<td>width</td>
			<td>0</td>
			<td>relative width of bar in 100%. </td>
			<td><code>isnumeric()</code> is true</td>
		</tr>
	</tbody>
	</b:table>
</b:panel>




<h2>Example</h2>

<p>No look specified

<b:progressBar width="80" />

<p>Danger</p>

<b:progressBar width="40" look="danger" />


<p>Info and cached</p>

<b:progressBar width="65" look="info" cacheid="sample progress bar">The year is <cfoutput>#year(now())#</cfoutput></b:progressBar>


