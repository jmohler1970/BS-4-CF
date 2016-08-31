<cfimport prefix="b" taglib="../../vendor/tags/bootstrap">


<h1><b:outputText key="BACKUP_OF" /> &lsquo;<em><cfoutput>#encodeforHTML(rc.slug)#</cfoutput></em>&rsquo;</h1>

<b:p text="right" isSafeHTML="true">
	<b:commandLink key="ASK_DELETE"  href="~/backups/delete/#rc.slug#" />
	<b:commandLink key="ASK_Restore" href="~/backups/restore/#rc.slug#" />
</b:p>	
	
	
<cfoutput>	
<b:table>
<tr><b:td key="page_title" /><td><b>#rc.title#</b> <cfif rc.private EQ "Y">(<b:outputText key="PRIVATE_SUBTITLE" />)</cfif></td></tr>
<tr><b:td key="backup_of" /><td>#rc.parent#</td></tr>
<tr><b:td key="date" /><td>#rc.pubdate#</td></tr>
<tr><b:td key="tag_keywords" /><em>#rc.meta#</em></td></tr>
<tr><b:td key="meta_desc" /><td><em>#rc.metad#</em></td></tr>
<tr><b:td key="menu_text" /><td>#rc.menu#</td></tr>
<tr><b:td key="priority" /><td>#rc.menuorder#</td></tr>
<tr><b:td key="add_to_menu" /><td>#rc.menustatus#</td></tr>
</b:table>
</cfoutput>	


	<b:row>
		<b:column span="12">
			<b:wysiwyg name="content" useDefaultButtons="false" style="height : 500px; max-height: 500px;"><cfoutput>#canonicalize(rc.content, false, false)#</cfoutput></b:wysiwyg>
	
		</b:column>	
	</b:row>



