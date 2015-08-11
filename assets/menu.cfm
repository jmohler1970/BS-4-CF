
<cfimport prefix="b" taglib="../bootstrap">



<b:navBar brand="BS-4-CF" brandHref="index.cfm" fixed="top">
	<b:navbarLinks>
		<b:dropMenu value="Getting started">
			<b:navLink value="Requirements" href="getting_started.cfm" />
		    	<b:navLink value="Binding and Rendering" href="getting_started.cfm##bind" />
			<b:navLink value="Layouts" href="layouts.cfm" />
			<b:navLink value="Forms" href="forms.cfm" />
		</b:dropMenu>
	
     	
		<b:dropMenu value="Themes">
          	<b:navLink value="Default" href="?" />
			<b:navLink />
			<cfloop index="rc.i" list="Cerulean,Cosmo,Cyborg,Darkly,Flatly,Journal,Lumen,Paper,Readable,Sandstone,Simplex,Slate,Spacelab,Superhero,United,Yeti">
				<b:navLink href="sample.cfm?theme=#rc.i#" binding="i" disabled="#IIF(url.theme EQ rc.i , 1, 0)#" />
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