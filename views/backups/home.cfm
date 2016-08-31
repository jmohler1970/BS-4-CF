<cfimport prefix="b" taglib="../../vendor/tags/bootstrap">


<b:h1 key="BAK_MANAGEMENT" />



<b:commandLink href="~/backups?deleteall=1" key="DELETE_ALL_BAK" styleClass="confirm" />


<cfsavecontent variable="viewPage_Title">
	<b:outputText key="VIEWPAGE_TITLE" usespan="false" />
</cfsavecontent>

<cfsavecontent variable="deletePage_Title">
	<b:outputText key="DELETEPAGE_TITLE" usespan="false" />
</cfsavecontent>


<b:table id="editpages" styleClass="datatables">
<thead>
<tr>
	<b:th key="page_title" />
	<b:th key="date" pull="right" />
	<th>&nbsp;</th>
</tr>
</thead>


<tbody>
<cfoutput query="rc.qryBackup">
	<tr>
		<td>
			<b:commandLink href="~/backups/edit/#slug#" value="#Title#" look="link" bold="#isHome#" tooltip="#viewpage_title.trim()#: #title#" />
		</td>
		<td><b:outputText value="#DateLastModified.LSDateFormat()#" /></td>

		<b:td text="right" isSafeHTML="true">
			<b:commandLink href="~/backups/edit/#slug#?delete" icon="trash" look="danger" size="xs" styleClass="delconfirm" tooltip="#deletePage_title.trim()#: #title#" />
		</b:td>
	</tr>
</cfoutput>
</tbody>
</b:table>	

