<cfimport prefix="b" taglib="../../_bootstrap">


<b:row>
	<b:column span="12">
     	<div class="page-header">
              <h1 id="nav">Navbar</h1>
            </div>
     </b:column>
</b:row>



<b:navBar brand="Brand" brandHref="##">
	<b:navbarLinks>
     	<b:navLink value="Home" href="##" />
		<b:navLink value="Link" href="##" />
		<b:dropMenu value="Dropdown">
          	<b:navLink value="Action" href="##" />
			<b:navLink value="Another action" href="##" />
			<b:navLink value="Something else here" href="##" />
			<b:navLink />
			<b:navLink header="Nav header" />
			<b:navLink value="Separated link" href="##" />
			<b:navLink value="One more separated link" href="##" />
			<b:navLink value="Never to be seen" rendered="false" href="##"/>
		</b:dropMenu>
	</b:navbarLinks>
	  	
	<form class="navbar-form navbar-left" role="search">
          <div class="form-group">
              	<input type="text" class="form-control" placeholder="Search" />
          </div>
          <b:commandButton value="Submit" />
     </form>
     
     <b:navbarLinks pull="right">
          <b:navLink value="Link" href="##" />   
     </b:navbarLinks>	
  
</b:navBar>


<b:navBar brand="Brand" brandHref="##" inverse="true">
	<b:navbarLinks>
     	<b:navLink value="Home" href="##" />
		<b:navLink value="Link" href="##" />
		<b:dropMenu value="Dropdown">
          	<b:navLink value="Action" href="##" />
			<b:navLink value="Another action" href="##" />
			<b:navLink value="Something else here" href="##" />
			<b:navLink />
			<b:navLink header="Nav header" />
			<b:navLink value="Separated link" href="##" />
			<b:navLink value="One more separated link" href="##" />
			<b:navLink value="Never to be seen" rendered="false" href="##"/>
		</b:dropMenu>
	</b:navbarLinks>	
		
		<form class="navbar-form navbar-left" role="search">
          	<div class="form-group">
               	<input type="text" class="form-control" placeholder="Search" />
               </div>
               <b:commandButton value="Submit" />
          </form>
          
	<b:navbarLinks pull="right">
          <b:navLink value="Link" href="##" />   
	</b:navbarLinks>
</b:navBar>


