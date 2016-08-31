
<cfimport prefix="b" taglib="../../vendor/tags/bootstrap">



<b:h1 key="WEB_HEALTH_CHECK" />


<h3>Pluma Version</h3>

<b:p key="CURR_VERSION" placeholder="#rc.version#" />




<h3>Server Setup</h3>


<b:table>
<tbody>
<cfoutput>
	<cfloop index="i" list="#structKeyList(rc.stSiteInfo)#">
	<tr>
		<td style="width : 450px; text-transform : capitalize;">#lcase(i)#</td>
		<td>#rc.stSiteInfo[i]#</td>
	</tr>
	</cfloop>
</cfoutput>
</tbody>
</b:table>




<h3>Memory</h3>

<cfscript>
numeric function formatMB(required numeric num) output="false" {
	return arguments.num / 1024 / 1024 \ 1;
	} 


// Create Java object instances needed for creating memory charts 
runtime = createobject("java", "java.lang.Runtime"); 
mgmtFactory = createobject("java", "java.lang.management.ManagementFactory"); 
pools = mgmtFactory.getMemoryPoolMXBeans(); 
heap = mgmtFactory.getMemoryMXBean(); 
jvm = {}; 
jvm["JVM_Used"] = formatMB(runtime.getRuntime().maxMemory()-runtime.getRuntime().freeMemory()); 
jvm["JVM_Max"] = formatMB(runtime.getRuntime().maxMemory()); 
jvm["JVM_Free"] = formatMB(runtime.getRuntime().freeMemory()); 
jvm["JVM_Total"] = formatMB(runtime.getRuntime().totalMemory()); 
jvm["Pool"] = 0;
for( i = 1; i <= arrayLen(pools); i++ ) 	{
	jvm["Pools_#pools[i].getName()#_Used"] = formatMB(pools[i].getUsage().getUsed());
	jvm["Pool"] = jvm["Pool"] + formatMB(pools[i].getUsage().getUsed());
	} 
</cfscript>

<cfoutput>
<form action="#buildurl(action = '.')###memory" method="post">
</cfoutput>

<b:table>
<thead>
<tr>
	<th>Category</th>
	<th class="text-right">Memory (MB)</th>
	<th class="text-center">Status</th>
</tr>
</thead>
<cfloop list="#structkeylist(jvm)#" index="i">
	<tr>
	
	<cfset amount = jvm[i]>
	<cfset baramount = amount \ 10>
	<cfoutput>
		<td style="width : 400px;">#i#</td>
	
		<td style="text-align : right;">#amount#</td>
		
				
		<td style="text-align : center;">
		<cfif i EQ "JVM_Free">
			<cfif amount GTE 200>
				<span class="OKmsg"><b><b:outputText key="OK" /></b></span>
			<cfelseif amount GTE 100>
				Warning
			<cfelse>	
				Alert!
			</cfif>
		</cfif>
		&nbsp;		
		</td>
		
	</cfoutput>
	</tr>
</cfloop>
</b:table>

	<b:commandButton name="submit">Garbage Collect</b:commandButton>
	<b:commandButton name="submit">Update</b:commandButton>
	
</form>


