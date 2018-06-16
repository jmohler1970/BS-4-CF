<cfimport prefix="b" taglib="../vendor/tags/bootstrap">




<b:navBar brand="Bootstrap for ColdFusion" fixed="top" inverse="true" style="background-image : linear-gradient(45deg, ##0A1855 0px, ##DA0024 100%)">
	<b:navbarLinks>

		<b:dropMenu value="Getting Started">
			<b:navLink key="Installation" 				active="#getItem().find('getting_started')#"	href="~/docs/getting_started" />
			<b:navLink value="Setup & Layouts"				active="#getItem().find('setup')#"			href="~/docs/setup" />
			<b:navLink value="I18n"						active="#getItem().find('i18n')#"			href="~/docs/i18n" />
			<b:navLink value="Directory Structure"			active="#getItem().find('structure')#"		href="~/docs/structure" />
			<b:navLink value="Smart tags & common features"	active="#getItem().find('common')#"		href="~/common" />
			<b:navLink value="Antisamy"					active="#getItem().find('antisamy')#"		href="~/docs/antisamy" />
			<b:navLink value="Cacheing"					active="#getItem().find('cache')#"			href="~/docs/cache" />

			<!---
			<b:navLink />
			<b:navLink header="Bootstrap 4"/>
			<b:navLink value="Alpha Release" href="~/docs/theme?theme=4alpha" />
			--->
		</b:dropMenu>


		<b:dropMenu value="CSS" active="#ArrayContains(['grid','typography','tables','forms','select','awesomecheckbox','buttons','helper'], getItem())#">
			<b:navLink value="Grid system"				active="#getItem().find('grid')#"			href="~/docs/grid" icon="th-large" />
		    	<b:navLink value="Typography"					active="#getItem().find('typography')#"		href="~/docs/typography" />
			<b:navLink value="Tables"	 				active="#getItem().find('tables')#"		href="~/docs/tables" icon="th" />
			<b:navLink value="Forms" 					active="#getItem().find('forms')#"			href="~/docs/forms" />
			<b:navLink value="Select, Checkbox, Radio"		active="#getItem().find('select')#"		href="~/docs/select" />
			<b:navLink value="Awesome Bootstrap Checkboxes"	active="#getItem().find('awesomecheckbox')#" href="~/docs/awesomecheckbox" />
			<b:navLink value="Buttons & Links"				active="#getItem().find('buttons')#"		href="~/docs/buttons" />
			<b:navLink value="Material Colors & Helper classes"	active="#getItem().find('helper')#"	href="~/docs/helper" />
		</b:dropMenu>

		<b:dropMenu value="Components" active="#ArrayContains(['icons','dropdowns','buttonGroups','nav','label','jumbotron','thumbnail','alert','progress','panel','include'], getItem())#">
			<b:navLink value="Icons"						active="#getItem().find('icons')#"			href="~/docs/icons" icon="picture" />
		    	<b:navLink value="Dropdowns"					active="#getItem().find('dropdowns')#"		href="~/docs/dropdowns" />
			<b:navLink value="Button groups"				active="#getItem().find('buttonGroups')#"	href="~/docs/buttonGroups" />
			<b:navLink value="Navs"						active="#getItem().find('nav')#"			href="~/docs/nav" />
			<b:navLink value="Labels & Badges"				active="#getItem().find('label')#"			href="~/docs/label" />
			<b:navLink value="Jumbotron"					active="#getItem().find('jumbotron')#"		href="~/docs/jumbotron" />
			<b:navLink value="Images"					active="#getItem().find('image')#"			href="~/docs/image" icon="picture" />
			<b:navLink value="Alerts"					active="#getItem().find('alert')#"			href="~/docs/alert" icon="list-alt" />
			<b:navLink value="Progress Bars"				active="#getItem().find('progress')#"		href="~/docs/progress" icon= "tasks" />
			<b:navLink value="Panels & Wells"				active="#getItem().find('panel')#"			href="~/docs/panel" />
			<b:navLink value="Include"					active="#getItem().find('include')#"		href="~/docs/include" />
		</b:dropMenu>

		<b:dropMenu value="JavaScript" active="#ArrayContains(['wysiwyg','modal','tab','poll'], getItem())#">
		    	<b:navLink value="WYSIWIG Editor"				active="#getItem().find('wysiwyg')#"		href="~/docs/wysiwyg" icon="pencil" />
		    	<b:navLink value="Modal"						active="#getItem().find('model')#"			href="~/docs/modal" icon="modal-window" />
		    	<b:navLink value="Tab"						active="#getItem().find('tab')#"			href="~/docs/tab" icon="folder-close" />
		    	<b:navLink value="Poll"						active="#getItem().find('poll')#"			href="~/docs/poll" icon="refresh" />
		</b:dropMenu>



		<b:dropMenu value="Themes" active="#IIF(getItem() EQ 'theme', 1, 0)#">
          	<b:navLink value="Default" href="~/bootswatch/default" />
			<b:navLink />
			<b:navLink header="By Bootswatch"/>
			<cfloop index="rc.i" list="Cerulean,Cosmo,Cyborg,Darkly,Flatly,Journal,Lumen,Paper,Readable,Sandstone,Simplex,Slate,Spacelab,Superhero,United,Yeti">
				<b:navLink href="~/bootswatch/#rc.i#" value="#rc.i#" active="#session.bootswatch.find(rc.i)#" />
			</cfloop>
		</b:dropMenu>


		<b:dropMenu value="Current Language : #application.lang#" active="#ArrayContains(['lang'], getSection())#">
			<cfloop index="lang" list="#application.Bootstrap.arLang.ToList()#">
			    	<b:navLink value="#lang#"	href="?lang=#lang#" />
			</cfloop>
		</b:dropMenu>

	</b:navbarLinks>
</b:navBar>


<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>



<cfoutput>#body#</cfoutput>
