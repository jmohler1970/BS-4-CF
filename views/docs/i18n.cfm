
<cfimport prefix="b" taglib="../_bootstrap">







<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Internationalization (i18n)</b:h1>
			<p>Multi language support</p>
		</b:column>	
	</b:row>
</div>


<h1>Features</h1>

<p>ColdFusion for Bootstrap tags supports ColdFusion <code>.ini</code>/<code>.properties</code> files and <code>.php</code> language files.</p>


<h1>Setup</h1>

<p>This directory for the language files in in <code>application.Bootstrap.langRoot</code>. From here, all the language files will be broken down by language and country. Current languages include:<p>
	
<ul>
	<li>de_DE (German German)</li>
	<li>en_US (American English)</li>
	<li>es_ES (Spanish Spanish)</li>
	<li>it_IT (Italian Italian)</li>
	<li>pt_BR (Brazilian Portuguese)</li>
</ul>		
	
<p>These languages are loaded by</p>

<p><b>Application.cfc</b></p>

<pre>
void function setupRequest()	{

	...	
	if (/* not cached */)	{
		/* Load language file into */
		
		CachePut(local.languageKey, local.i18n[local.languageKey], 1, 1, application.Bootstrap.cache.language);
		}
	
	
	...
	}	
</pre>


<p>In other words, as language are used they are added to the application cache. Later the Bootstrap for ColdFusion tags will use them in.</p>

<pre>
	application.geti18n(attributes.key, attributes.placeholder)
</pre>	



<cfoutput>
#BooleanFormat("")#
	
	
#BooleanFormat(request?.bob)#


</cfoutput>	


<cfscript>
if(request?.bob)	writeoutput("There is a Bob variable");
</cfscript>




<cfif request?.bob>There is a Bob variable</cfif>


