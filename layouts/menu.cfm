
<cfimport prefix="b" taglib="../bootstrap">



<b:navBar brand="Bootstrap for ColdFusion" brandHref="index.cfm" fixed="top">
	<b:navbarLinks>
	
		<b:dropMenu value="Getting Started">
			<b:navLink value="Introduction" href="?view=getting_started" active="#IIF(url.view EQ 'getting_started', 1, 0)#" />
			<b:navLink value="Smart tags & common features" href="?view=common" />
			<b:navLink value="Stylesheets & JavaScript" href="?view=ssjs" />
			<b:navLink />
			<b:navLink header="Bootstrap 4"/>
			<b:navLink value="Alpha Release" href="?view=theme&theme=4alpha" />	
		</b:dropMenu>
	
		
		<b:dropMenu value="CSS" active="#ArrayContains(['grid','typography','tables','forms','select','awesomecheckbox','buttons','helper'], url.view)#">
			<b:navLink value="Grid system" href="?view=grid" icon="th-large" />
		    	<b:navLink value="Typography" href="?view=typography" />
			<b:navLink value="Tables" href="?view=tables" icon="th" />
			<b:navLink value="Forms" href="?view=forms" />
			<b:navLink value="Select, Checkbox, Radio" href="?view=select" />
			<b:navLink value="Awesome Bootstrap Checkboxes" href="?view=awesomecheckbox" />
			<b:navLink value="Buttons & Links" href="?view=buttons" />
			<b:navLink value="Helper classes" href="?view=helper" />
		</b:dropMenu>
		
		<b:dropMenu value="Components" active="#ArrayContains(['icons','dropdowns','buttonGroups','nav','label','jumbotron','thumbnail','alert','progress','panel','include'], url.view)#">
			<b:navLink value="Icons" href="?view=icons" icon="picture" />
		    	<b:navLink value="Dropdowns" href="?view=dropdowns" />
			<b:navLink value="Button groups" href="?view=buttonGroups" />
			<b:navLink value="Navs" href="?view=nav" />
			<b:navLink value="Labels & Badges" href="?view=label" />
			<b:navLink value="Jumbotron" href="?view=jumbotron" />
			<b:navLink value="Images" href="?view=image" icon="picture" />
			<b:navLink value="Alerts" href="?view=alert" icon="list-alt" />
			<b:navLink value="Progress Bars" href="?view=progress" icon= "tasks" />
			<b:navLink value="Panels & Wells" href="?view=panel" />
			<b:navLink value="Include" href="?view=include" />
		</b:dropMenu>
	
		<b:dropMenu value="JavaScript" active="#ArrayContains(['modal','tab','poll'], url.view)#">
		    	<b:navLink value="Modal" href="?view=modal" icon="modal-window" />
		    	<b:navLink value="Tab" href="?view=tab" icon="folder-close" />
		    	<b:navLink value="Poll" href="?view=poll" icon="refresh" />
		</b:dropMenu>
	

     	
		<b:dropMenu value="Themes" active="#IIF(url.view EQ 'theme', 1, 0)#">
          	<b:navLink value="Default" href="?view=theme&theme=default" />
			<b:navLink />
			<b:navLink header="By Bootswatch"/>
			<cfloop index="rc.i" list="Cerulean,Cosmo,Cyborg,Darkly,Flatly,Journal,Lumen,Paper,Readable,Sandstone,Simplex,Slate,Spacelab,Superhero,United,Yeti">
				<b:navLink href="?view=theme&theme=#rc.i#" binding="i" disabled="#IIF(session.theme EQ rc.i , 1, 0)#" />
			</cfloop>		
		</b:dropMenu>
		
	</b:navbarLinks>
	  	
	
     <b:navbarLinks rendered="false" pull="right">
          <b:navLink value="Examples" href="examples.cfm" />
     </b:navbarLinks>	
</b:navBar>


<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>