
<cfimport prefix="b" taglib="../bootstrap">



<b:navBar brand="BS-4-CF" brandHref="index.cfm" fixed="top">
	<b:navbarLinks>
		<b:navLink value="Getting Started" href="?view=getting_started" active="#IIF(url.view EQ 'getting_started', 1, 0)#" />
	
		
		<b:dropMenu value="CSS" active="#ArrayContains(['grid','typography','tables','forms','select','awesomecheckbox','buttons','helper'], url.view)#">
			<b:navLink value="Grid system" href="?view=grid" icon="th-large" />
		    	<b:navLink value="Typography" href="?view=typography" />
			<b:navLink value="Tables" href="?view=tables" icon="th" />
			<b:navLink value="Forms" href="?view=forms" />
			<b:navLink value="Select, Checkbox, Radio" href="?view=select" />
			<b:navLink value="Awesome Bootstrap Checkboxes" href="?view=awesomecheckbox" />
			<b:navLink value="Buttons" href="?view=buttons" />
			<b:navLink value="Helper classes" href="?view=helper" />
		</b:dropMenu>
		
		<b:dropMenu value="Components" active="#ArrayContains(['icons','dropdowns','buttonGroups','nav','label','jumbotron','thumbnail','alert','progress','panel','well','include'], url.view)#">
			<b:navLink value="Icons" href="?view=icons" icon="picture" />
		    	<b:navLink value="Dropdowns" href="?view=dropdowns" />
			<b:navLink value="Button groups" href="?view=buttonGroups" />
			<b:navLink value="Navs" href="?view=nav" />
			<b:navLink value="Labels & Badges" href="?view=label" />
			<b:navLink value="Jumbotron" href="?view=jumbotron" />
			<b:navLink value="Thumbnails" href="?view=thumbnail" icon="picture" />
			<b:navLink value="Alerts" href="?view=alert" icon="list-alt" />
			<b:navLink value="Progress Bars" href="?view=progress" icon= "tasks" />
			<b:navLink value="Panels" href="?view=panel" />
			<b:navLink value="Wells" href="?view=well" />
			<b:navLink value="Include" href="?view=include" />
		</b:dropMenu>
	
		<b:dropMenu value="JavaScript" active="#ArrayContains(['modal','tab','poll'], url.view)#">
		    	<b:navLink value="Modal" href="?view=modal" icon="modal-window" />
		    	<b:navLink value="Tab" href="?view=tab" icon="folder-close" />
		    	<b:navLink value="Poll" href="?view=poll" icon="refresh" />
		</b:dropMenu>
	

     	
		<b:dropMenu value="Themes" active="#IIF(url.view EQ 'theme', 1, 0)#">
          	<b:navLink value="Default" href="?view=theme" />
			<b:navLink />
			<b:navLink header="By Bootswatch"/>
			<cfloop index="rc.i" list="Cerulean,Cosmo,Cyborg,Darkly,Flatly,Journal,Lumen,Paper,Readable,Sandstone,Simplex,Slate,Spacelab,Superhero,United,Yeti">
				<b:navLink href="?view=theme&amp;theme=#rc.i#" binding="i" disabled="#IIF(session.theme EQ rc.i , 1, 0)#" />
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