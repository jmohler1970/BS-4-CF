
<cfimport prefix="b" taglib="../_bootstrap">


<cfif rc.slug EQ "">
	<b:h1 key="CREATE_NEW_PAGE" />
<cfelse>
	<b:h1 key="PAGE_EDIT_MODE" />
</cfif>

<cfif rc.keyExists("empty")>
	<b:alert look="danger" key="CANNOT_SAVE_EMPTY" />	
</cfif>	


<form action="~/edit" method="post" class="form-horizontal" id="postSubmit">
	<cfoutput><input type="hidden" name="slug" value="#rc.slug#" /></cfoutput>



	<b:formGroup>
		<b:column span="12">
		<cfoutput>
			<input type="text" name="title" class="form-control" placeholder="<b:verbatim key="page_title" />" value="#encodeForHTMLAttribute(rc.title)#" required="required" />
		</cfoutput>
		</b:column>
	</b:formGroup>

	
	<b:well>
		<b:formGroup>
			<b:column span="3" key="keep_private" />

			
			<b:column span="3">
				<b:selectOneMenu name="private" selectedValue="#rc.private#">
					<b:selectItem display="Normal" value="" />
					<b:selectItem display="Private" value="Y" />
				</b:selectOneMenu>
			</b:column>
			
			<b:column span="3" key="slug_url" />
			

			<b:column span="3">
				<cfoutput><input type="text" name="url" value="#rc.url#" class="form-control" <cfif rc.slug EQ "index">readonly="readonly"</cfif> /></cfoutput>
			</b:column>
		</b:formGroup>
		
		<b:formGroup>
			<b:column span="3" key="parent_page" />
			
			<b:column span="3">
				<b:selectOneMenu name="parent" selectedValue="#rc.parent#">
					<b:selectItem value='' display="< No Parent >" />
				</b:selectOneMenu>
			</b:column>
			
			<b:column span="3" key="tag_keywords" />
	
	
			<b:column span="3">
				<cfoutput><input type="text" name="meta" value="#rc.meta#" class="form-control" /></cfoutput>
			</b:column>
		</b:formGroup>	

		<b:formGroup>
			<b:column span="3" key="template" />
				
			<b:column span="3">
				<!--- FW/1 layout --->
				<b:selectOneMenu name="template" selectedValue="#rc.template#">
					<b:selectItems query="#rc.qryTemplate#" />
				</b:selectOneMenu>
			</b:column>
			
			<b:column span="3" key="meta_desc" />
			
			
			<b:column span="3">
				<cfoutput><textarea name="metad" class="form-control">#encodeForHTML(rc.metad)#</textarea></cfoutput>
			</b:column>
	
		</b:formGroup>
		
		
		<b:fieldset styleClass="bg-info">	
		
		<b:formGroup>
		
			<b:column span="3" key="add_to_menu" />
			
			<b:column span="3">
				<b:selectBooleanCheckbox name="menu.status" checked="#IIF(rc.menustatus EQ 'Y', 1, 0)#" value="Y" look="primary" />
			</b:column>
			
		</b:formGroup>
		
		<b:formGroup>
			<b:column span="3" key="menu_text" />
			
			<b:column span="3">
				<cfoutput><input type="text" name="menu.text" value="#encodeForHTMLAttribute(rc.menu)#" class="form-control" /></cfoutput>
			</b:column>
		</b:formGroup>

		<b:formGroup>
			<b:column span="3" key="priority" />
			
			<b:column span="3">
				<b:selectOneMenu name="menu.order" selectedValue="#rc.menuOrder#" from="1" to="30">
					<b:selectItem display="-" />
				</b:selectOneMenu>
			</b:column>
			
		</b:formGroup>
		
		</b:fieldset>
			
	
	
	
	
	<b:row>
		<b:column span="12">
			<b:wysiwyg name="content" style="height : 500px; max-height: 500px;"><cfoutput>#canonicalize(rc.content, false, false)#</cfoutput></b:wysiwyg>
	
		</b:column>	
	</b:row>
	</b:well>
	
	<input type="hidden" name="author" value="" />
	
	<b:buttonGroup>
		<b:commandButton key="btn_saveupdates" />
		
		<b:dropmenu buttonPart="true">
			<li><b:commandLink key="clone"  look="default" href="~/pages/clone?slug=#rc.slug#" /></li>
			<li><b:commandLink key="delete" look="default" href="~/filedelete?slug=#rc.slug#" /></li>
		</b:dropmenu>
		
	</b:buttonGroup>	
</form>	

<p></p>

<b:alert look="info">
	<b:icon name="time" /> <b:outputText key="Last_saved" placeholder="#rc.author#" /> <cfoutput>#rc.pubDate# &nbsp;</cfoutput>
	&bull;&nbsp; <b:commandLink look="link" action="~/backup-edit?p=view&id=#rc.url#" key="BACKUP_AVAILABLE" />
</b:alert>


