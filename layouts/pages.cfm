<cfimport prefix="b" taglib="../vendor/tags/bootstrap">


<b:jumbotron tight="true">
	<b:buttonGroup list="true" pull="right">
		<b:commandLink href="~/wiki" icon="user" key="Welcome" />
		<b:commandLink href="~/docs" icon="book" value="Bootstrap for CF" />
		<b:commandLink href="~/logout" icon="log-out" key="tab_logout" />
	</b:buttonGroup>
	
	<b:h1 key="Control_Panel" />
</b:jumbotron>



<b:navBar brand="PlumaCMS">
	<b:navbarLinks>
		<b:dropMenu key="tab_Pages" active="#IIF(getSection() EQ 'pages', 1, 0)#">
			<b:navLink value="View All Pages" 	href="~/pages" 	active="#IIF(getSection() EQ 'pages' AND getItem() EQ 'home', 1, 0)#" />
			<b:navLink value="Create New Page" href="~/edit"		active="#IIF(getSection() EQ 'pages' AND getItem() EQ 'edit' AND rc.slug EQ  '', 1, 0)#" />
          	<b:navLink value="Edit Page" 		processed="#IIF(getSection() EQ 'pages' AND getItem() EQ 'edit' AND rc.slug NEQ '', 1, 0)#" active="1" />
          	<b:navLink value="Menu Manager" 	href="~/pages/menu" active="#IIF(getSection() EQ 'pages' AND getItem() EQ 'menu', 1, 0)#" />
		</b:dropMenu>

		<b:dropMenu key="tab_Files" active="#IIF(getSection() EQ 'upload', 1, 0)#">
          	<b:navLink key="File_Management" 	href="~/upload" active="#IIF(getSection() EQ 'Upload' AND getItem() EQ 'home', 1, 0)#" />
          	<b:navLink key="IMG_CONTROL_PANEL" processed="#IIF(getSection() EQ 'upload' AND getItem() EQ 'details', 1, 0)#" active="1" />
          	<b:navLink key="Uploadify_button"  href="~/upload##new" />
		</b:dropMenu>
		
		<b:dropMenu key="tab_Theme" active="#IIF(getSection() EQ 'Theme', 1, 0)#">
          	<b:navLink value="Choose Theme" href="~/theme" 	active="#IIF(getSection() EQ 'Theme' AND getItem() EQ 'home', 1, 0)#" />
          	<b:navLink value="Edit Theme" href="~/theme/edit" active="#IIF(getSection() EQ 'Theme' AND getItem() EQ 'edit', 1, 0)#" />
          	<b:navLink value="Edit Components" href="~/components" active="#IIF(getSection() EQ 'Theme' AND getItem() EQ 'components', 1, 0)#" />
          	<b:navLink value="View Sitemap" href="~/sitemap" active="#IIF(getSection() EQ 'Theme' AND getItem() EQ 'sitemap', 1, 0)#" />
		</b:dropMenu>
		
		
		<b:dropMenu key="tab_Backups" active="#IIF(getSection() EQ 'Backups', 1, 0)#">
          	<b:navLink key="SIDE_PAGE_BAK" 	href="~/backups"	 	active="#IIF(getSection() EQ 'Backups' AND getItem() EQ 'home', 1, 0)#" />
          	<b:navLink key="SIDE_VIEW_BAK" 	processed="#IIF(getSection() EQ 'backups' AND getItem() EQ 'edit', 1, 0)#" active="1" />
          	<b:navLink key="SIDE_WEB_ARCHIVES" href="~/backups/archive" active="#IIF(getSection() EQ 'Backups' AND getItem() EQ 'archive', 1, 0)#" />
		</b:dropMenu>
		
     </b:navbarLinks>

	
	<b:navbarLinks pull="right">
		<b:navLink key="tab_support" href="~/support" active="#IIF(getSection() EQ 'Support', 1, 0)#" />
		<b:navLink key="tab_settings" href="~/settings" active="#IIF(getSection() EQ 'Settings', 1, 0)#" />
	</b:navbarLinks>
</b:navBar>




<cfoutput>#body#</cfoutput>


