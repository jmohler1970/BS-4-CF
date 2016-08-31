
<cfimport prefix="b" taglib="../../vendor/tags/bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1 value="#session.bootswatch#" />
			<p>All themes are from Bootswatch and are not a part of this distribution.</p>
		</b:column>	
	</b:row>
</div>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>




<b:include template="bootswatch/theme/navbar.cfm" cacheid="bootswatch_navbar"  />


<b:include template="bootswatch/theme/button.cfm" cacheid="bootswatch_button" />


<b:include template="bootswatch/theme/typography.cfm" cacheid="bootswatch_typography" />


<b:include template="bootswatch/theme/table.cfm" cacheid="bootswatch_table" />


<b:include template="bootswatch/theme/forms.cfm" cacheid="bootswatch_forms" />


<b:include template="bootswatch/theme/nav.cfm" cacheid="bootswatch_nav" /><!--- includes tabs --->


<b:include template="bootswatch/theme/indicators.cfm" cacheid="bootswatch_indicators" />


<b:include template="bootswatch/theme/containers.cfm" cacheid="bootswatch_containers" />


<b:include template="bootswatch/theme/dialogs.cfm" cacheid="bootswatch_dialogs" />


