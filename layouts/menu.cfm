
<cfimport prefix="b" taglib="../bootstrap">



<b:navBar brand="BS-4-CF" brandHref="index.cfm" fixed="top">
	<b:navbarLinks>
		<b:navLink value="Getting Started" href="?view=getting_started" />
	
		
		<b:dropMenu value="CSS">
			<b:navLink value="Grid system" href="?view=grid" icon="th-large" />
		    	<b:navLink value="Typography" href="?view=typography" />
			<b:navLink value="Tables" href="?view=tables" icon="th" />
			<b:navLink value="Forms" href="?view=forms" />
			<b:navLink value="Select, Checkbox, Radio" href="?view=select" />
			<b:navLink value="Awesome Bootstrap Checkboxes" href="?view=awesomecheckbox" />
			<b:navLink value="Buttons" href="?view=buttons" />
			<b:navLink value="Helper classes" href="?view=helper" />
		</b:dropMenu>
		
		<b:dropMenu value="Components">
			<b:navLink value="Icons" href="?view=icons" icon="picture" />
		    	<b:navLink value="Dropdowns" href="?view=dropdowns" />
			<b:navLink value="Button groups" href="?view=buttonGroups" />
			<b:navLink value="Navs" href="?view=Nav" />
			<b:navLink value="Labels & Badges" href="?view=label" />
			<b:navLink value="Jumbotron" href="?view=jumbotron" />
			<b:navLink value="Thumbnails" href="?view=thumbnail" icon="picture" />
			<b:navLink value="Alerts" href="?view=alert" icon="list-alt" />
			<b:navLink value="Progress Bars" href="?view=progress" icon= "tasks" />
			<b:navLink value="Panels" href="?view=panel" />
			<b:navLink value="Wells" href="?view=well" />
		</b:dropMenu>
	
		<b:dropMenu value="JavaScript">
			<b:navLink value="Modal" href="?view=Modal" icon="modal-window" />
		    	<b:navLink value="Tab" href="?view=Tab" icon="folder-close" />
		</b:dropMenu>
	

     	
		<b:dropMenu value="Themes">
          	<b:navLink value="Default" href="?view=theme" />
			<b:navLink />
			<b:navLink header="By Bootswatch"/>
			<cfloop index="rc.i" list="Cerulean,Cosmo,Cyborg,Darkly,Flatly,Journal,Lumen,Paper,Readable,Sandstone,Simplex,Slate,Spacelab,Superhero,United,Yeti">
				<b:navLink href="?view=theme&amp;theme=#rc.i#" binding="i" disabled="#IIF(url.theme EQ rc.i , 1, 0)#" />
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