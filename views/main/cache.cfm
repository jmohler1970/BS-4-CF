<cfimport prefix="b" taglib="../_bootstrap">

<b:row>
	<b:column span="12">	
		<b:h1 pageHeader="true">About Cacheing</b:h1>
		<p>cacheid</p>
	</b:column>	
</b:row>




<b:h1 key="introduction" />

<p>ColdFusion has built in cacheing functions including <code>cachePut()</code> and <code>cacheGet()</code>. These cacheing functions make it easy to make sections of your faster. Some of the Bootstrap tags such as <code>b:column</code> hold lots of information some of which many not change often. Therefore is useful to add cacheing to these areas</p>

<p>The Bootstrap for ColdFusion library makes it easy to cache certain sections. Just a <code>cacheid</code> and everything just works.</p>

<p>ColdFusion uses <b:commandLink href="http://www.ehcache.org/" look="link">Ehcache</b:commandLink>


<h1>Cache Status</h1>

<p>These are the current cacheids on this site</p>



<b:table styleClass="datatables">
<thead>
<tr>
	<th>Region</th>
	<th>Cacheid</th>
	<th style="text-align : center;">Created Time</th>
	<th style="text-align : center;">Last Updated</th>
	<th style="text-align : center;">Last Hit</th>
	<th style="text-align : right;">Hit Count</th>
	<th style="text-align : right;">Hit Count %</th>
	<th style="text-align : right;">Size</th>
</tr>
</thead>

<cfoutput>
	<cfloop index="region" array="#rc.arRegions#">
		<cfloop index="cache" array="#cacheGetAllIds(region)#">
			<cfset metaData = cacheGetMetadata(cache, "template", region)>
			
			<tr>
				<td>#region#</td>
				<td>#cache#</td>
				<td style="text-align : center;">#LSTimeFormat(metadata.createdTime, "h:mm:ss")#</td>
				<td style="text-align : center;">#LSTimeFormat(metadata.lastupdated, "h:mm:ss")#</td>
				<td style="text-align : center;">#LSTimeFormat(metadata.lastHit, "h:mm:ss")#</td>
				<td style="text-align : right;">#metadata.hitcount#</td>
				<td style="text-align : right;">
					<cfif metadata.cache_hitcount GT 0>
						<cfset percent_of_hits = 100.0 * metadata.hitcount / metadata.cache_hitcount>
						#LSNumberFormat(percent_of_hits, '999.9')# %
					</cfif>
				</td>
				<td style="text-align : right;">#LSNumberFormat(metadata.size)#</td>
			</tr>
		
		</cfloop>
	</cfloop>
</cfoutput>	
</b:table>




<b:commandLink href="~/main/cache?flush=1" look="danger" value="Flush Cache" />


