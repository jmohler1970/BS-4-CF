<cfimport prefix="b" taglib="../../vendor/tags/bootstrap">



		
		
		<h1><b:outputText key="uploaded_files" />
		
		<small>
		&nbsp; &nbsp;/&nbsp; &nbsp;
		
		<cfif rc.imagefilter EQ "documents">
			<b:outputText key="ftype_documents" />	
		<cfelse>
			<b:outputText key="#rc.imagefilter#" />	
		</cfif>	
		
		</small>
		</h1>



		<div class="pull-right">
	
		<cfoutput>		 
			<form action="#buildURL(action='.home')#" method="post" id="myfilter">
				<input type="hidden" name="path" value="#rc.path#">
			
		
				<select name="imagefilter" onchange="myfilter.submit();">
					<option value="Show_All">	<b:outputText key="show_all" /></option>
					<option value="Documents" 	<cfif rc.imagefilter EQ "documents">selected="selected"</cfif>><b:outputText key="ftype_documents" /></option>
					<option value="Images" 		<cfif rc.imagefilter EQ "images">selected="selected"</cfif>><b:outputText key="images" /></option>
				</select>
			</form>
		</cfoutput>

		</div>

	<div class="clearfix"></div>	

<cfoutput>
	
	
	<ol class="breadcrumb">
	
		<li></li>
	
		<li><a href="#buildURL(action='.home')#">uploads</a></li> 
	
	<cfset partialPath = "">
	
	<cfloop index="i" list="#rc.path#" delimiters="/">
		<cfset partialPath = ListAppend(PartialPath, i, '|')>
		
		<cfif i NEQ listlast(rc.path, "/")>
			<li><a href="#buildURL(action='.home', querystring='path=#partialpath#')#">#encodeForHTML(i)#</a></li>	
		<cfelse>
			<li class="active">#encodeForHTML(i)#</li>
		</cfif>
		
	</cfloop>
		
		<li><b:commandLink id="createfolder" href="##" key="create_folder" size="xs" onclick="" /></li>
	</ol>

		
	<div id="new-folder">
		<form action="#buildURL(action='.createfolder')#" method="post" class="form-inline" style="display : none;">
			<input type="hidden" name="path" value="#rc.path#" />

			<b:formgroup>	
				<input name="foldername" type="text" class="form-control" />
			</b:formgroup>	

			<b:commandButton key="create_folder" /> 
	
			<b:commandLink key="cancel" styleClass="cancel" href="##" />
		</form>
	</div>

</cfoutput>



<b:table stykeClass="datatables">
<thead>
<tr>
	<cfif rc.imagefilter EQ "images">
		<th></th>
	</cfif>
	<b:th key="file_name" />
	<b:th key="file_size"	 text="right" />
	<b:th key="date"		 text="right" />
	<th></th>
</tr>
</thead>



<cfoutput query="rc.qryDirectory">
	<cfif name EQ ".ds_store">
	
	<cfelseif type EQ "dir">
	

	<tr>
		
		<cfif rc.imagefilter EQ "images">
		<td></td>
		</cfif>
	
		<td>
			<cfset mypath = rc.path EQ "" ? urlencodedformat(name) : urlencodedformat("#rc.path#|#name#")>
			<a href="#buildURL(action='.', querystring='path=#mypath#')#"><b>#name#</b></a>
		</td>
	
		
		<td></td>
		
		<b:td text="right">#LSDateFormat(datelastmodified)#</b:td>
	
		
		<td class="delete">
			<b:commandLink action="~/upload/delete?folder=#name#" icon="trash" size="xs" look="danger" />
		</td>
	</tr>
	
	<cfelse>
	
	<cfif 	rc.imagefilter EQ "Show_All" 
		OR	rc.imagefilter EQ "Images" AND ListFindNoCase("jpg,jpeg,gif,png", listlast(name, ".")) 		NEQ 0
		OR	rc.imagefilter EQ "Documents" AND ListFindNoCase("jpg,jpeg,gif,png", listlast(name, ".")) 	EQ 0
		>
		
	<tr>
		<cfif rc.imagefilter EQ "images">
		<td class="imgthumb" style="display : table-cell;">
			<img src="#rc.site_root##rc.thumbspath##rc.path#/#name#" alt="#name#" style="width : 100px;" />
		</td>
		</cfif>
		
		<td>
			<cfif rc.path EQ "">
				<cfset querystring = "name=#name#">
			<cfelse>
				<cfset querystring = "path=#rc.path#&name=#name#">
			</cfif>
			
		<cfif ListFindNoCase("jpg,jpeg,gif,png", listlast(name, ".")) NEQ 0>
		
			<a href="#buildURL(action='.details', querystring=querystring)#">#name#</a>
		<cfelse>
			<cfif rc.path EQ "">
				<a href="/#rc.uploadspath##name#">#name#</a>	
			<cfelse>
				<a href="/#rc.uploadspath##rc.path#/#name#">#name#</a>	
			</cfif>
		
			
		
		</cfif>
		
		</td>
	
		
		<b:td text="right">#LSNumberFormat(size \ 1024)# KB</b:td>
		
		<b:td text="right">#LSDateFormat(datelastmodified)#</b:td>
	
		
		<td class="delete">
			<b:commandLink action="~/upload/delete/path/#rc.path#/filename/#name#" icon="trash" size="xs" look="danger" />
		</td>

	</tr>
		</cfif>
	
	</cfif>

</cfoutput>


</b:table>


<cfoutput>
<p><i><b>#rc.qryDirectory.recordcount#</b> <b:outputText key="total_files" /> (#rc.totalsize# KB)</i></p>
</cfoutput>


<b:h3 key="uploadify_button" /><a name="upload"></a>

<cfoutput>
<form action="#BuildURL(action = 'upload.process')#" method="post" enctype="multipart/form-data" class="form-inline">
	<input type="hidden" name="path" value="#rc.path#" />

	<b:formgroup>
		<input type="file" name="csv1" class="text" />
	</b:formgroup>

	<b:commandButton key="file_upload" />
</form>  
</cfoutput>

<p><small><b:outputText key="max_file_size" /> <b>2MB</b></small></p>





