
<cfimport prefix="b" taglib="../_bootstrap">


<b:h1 key="page_management" />


<b:p styleClass="pull-right" isSafeHTML="true">
	<b:commandLink href="##" id="show-characters" accesskey="u" key="toggle_status" size="xs"  />
</b:p>

<div class="clearfix"></div>

<cfsavecontent variable="editpage_Title">
	<b:outputText key="EDITPAGE_TITLE" usespan="false" />
</cfsavecontent>

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
	<th>&nbsp;</th>
</tr>
</thead>


<tbody>
<cfoutput query="rc.qryPage">
	<tr>
		<td>
			<b:commandLink action="edit/#slug#" value="#Title#" look="link" bold="#isHome#" tooltip="#editpage_title.trim()#: #title#" />
			<span class="showstatus toggle" style="display : none;">
				<cfif isHome><sup>[<b:outputText key="homepage_subtitle" />]</sup></cfif>	
				<cfif MenuStatus EQ "Y"><sup>[<b:outputText key="menuitem_subtitle" />]</sup></cfif>
				<cfif private EQ "Y"><sup>[<b:outputText key="private_subtitle" />]</sup></cfif>
			</span>
		</td>
		<td><b:outputText value="#DateLastModified.LSDateFormat()#" /></td>
		<td><b:commandLink action="wiki/#slug#" value="View" look="link" tooltip="#viewPage_title.trim()#: #title#" /></td>
		<b:td text="right" isSafeHTML="true">
			<b:commandLink action="filedelete?slug=#slug#" icon="trash" look="danger" size="xs" styleClass="delconfirm" tooltip="#deletePage_title.trim()#: #title#" rendered="#!isHome#" />
		</b:td>
	</tr>
</cfoutput>
</tbody>
</b:table>

