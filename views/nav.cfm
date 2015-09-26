
<cfimport prefix="b" taglib="../bootstrap">



<b:row>
	<b:column span="12">	

		<b:h1>Navigation Examples</b:h1>
		<p>View code for details.</p>
	</b:column>	
</b:row>




<b:h2>Introduction</b:h2>




<b:panel look="info" title="Attributes of <b:dropMenu>">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<th>Default value</th>
			<th>Description</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td>active</td>
			<td>false</td>
			<td>Should active class get added?</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>id=</code>.</td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td>This like a <code>&lt;cfif&gt;</code></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td>This is like <code>&lt;cfsilent&gt;</code></td>
		</tr>
		<tr>
			<td>value</td>
			<td>(none)</td>
			<td>What is shown</td>
		</tr>


	</tbody>
	</b:table>
</b:panel>


<b:panel look="info" title="Attributes of <b:navLink>">

	<b:table>
	<thead>
		<tr>
			<th>Attribute</th>
			<th>Default value</th>
			<th>Description</th>
		</tr>	
	</thead>
	
	<tbody>
		<tr>
			<td>active</td>
			<td>false</td>
			<td>Should active class get added?</td>
		</tr>
		<tr>
			<td>binding</td>
			<td>(none)</td>
			<td>Try to find the value of this tag in the <code>rc.*</code> scope. See note below</td>
		</tr>
		<tr>
			<td>data-*</td>
			<td>(none)</td>
			<td>Pass through of HTML5 <code>data-*=</code> attributes.</td>
		</tr>
		<tr>
			<td>disabled</td>
			<td>false</td>
			<td>Pass through of <code>disabled="disabled"</code>. If disabled is passed, then it will be treated at true</td>
		</tr>
		<tr>
			<td>fragment</td>
			<td>(none)</td>
			<td>Pass through of Anchor. Some links are anchor only</td>
		</tr>
		<tr>
			<td>icon</td>
			<td>(none)</td>
			<td>Adds Glyphicon</td>
		</tr>
		<tr>
			<td>iconAlign</td>
			<td>(none)</td>
			<td>Aligns icon</td>
		</tr>		
		<tr>
			<td>header</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>id=</code>.</td>
		</tr>
		<tr>
			<td>href</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>href=</code>.</td>
		</tr>
		<tr>
			<td>id</td>
			<td>(none)</td>
			<td>Pass through of HTML <code>id=</code>.</td>
		</tr>
		<tr>
			<td>library</td>
			<td>default</td>
			<td>Which icon library should be used? This is set via: <code>application.Bootstrap.IconLibrary[attributes.library]</code>. This site uses Glyphicons</td>
		</tr>
		<tr>
			<td>ng-*</td>
			<td>(none)</td>
			<td>Pass through of all AngularJS attributes</td>
		</tr>
		<tr>
			<td>on*</td>
			<td>(none)</td>
			<td>Pass through of all Mouse/Pointer events.</td>
		</tr>
		<tr>
			<td>processed</td>
			<td>true</td>
			<td>This like a <code>&lt;cfif&gt;</code></td>
		</tr>
		<tr>
			<td>rendered</td>
			<td>true</td>
			<td>This is like <code>&lt;cfsilent&gt;</code></td>
		</tr>
		<tr>
			<td>value</td>
			<td>(none)</td>
			<td>What is shown</td>
		</tr>


	</tbody>
	</b:table>
</b:panel>


<h2>Examples</h2>

<h3>Basic</h3>

<b:navBar brand="BS-4-CF" brandHref="##">
    <b:navbarLinks>
        <b:navLink value="Home" href="##" />
        <b:navLink value="Link" href="##" />
        <b:navLink value="FAQ" href="##" />
        <b:dropMenu value="Details">
            <b:navLink value="Action" href="##" />
            <b:navLink value="Another action" href="##" />
            <b:navLink value="Something else here" href="##" />
            <b:navLink />
            <b:navLink header="Nav header" />
            <b:navLink href="##">Separated link</b:navLink>
            <b:navLink href="##">One more separated link <b:badge value="5" /></b:navLink>
        </b:dropMenu>
        
        <b:dropMenu value="Communication" active="true">
            <b:navLink value="Action" href="##"></b:navLink>
            <b:navLink value="Another action" href="##"></b:navLink>
            <b:navLink value="Something else here" href="##"></b:navLink>
            <b:navLink></b:navLink>
            <b:navLink header="Nav header"></b:navLink>
            <b:navLink value="Separated link" href="##" icon="heart"></b:navLink>
            <b:navLink value="One more separated link" href="##"></b:navLink>
        </b:dropMenu>
    </b:navbarLinks>
</b:navBar>


<h3>With Inverse text and Jumbotron</h3>

<b:jumbotron tight="true">
	<b:buttonGroup list="true" pull="right">
		<b:commandLink href="##" icon="user" value="James Mohler" />
		<b:commandLink href="##" icon="envelope">News <b:badge look="success" value="3" /></b:commandLink>
		<b:commandLink href="##" icon="log-out" />
	</b:buttonGroup>
	
	<b:h1>Omega! Software Inc.</b:h1>
</b:jumbotron>



<b:navBar brand="BS-4-CF" brandHref="##" inverse="true">
    <b:navbarLinks>
        <b:navLink value="Home"	href="##" active="true" />
        <b:navLink value="Link" 	href="##" />
        <b:navLink				href="##">FAQ</b:navLink>
    </b:navbarLinks>
</b:navBar>


<b:h1 pageheader="true">Hello World!</b:h1>


<p>Lorem Ipsum</p>



<h3>With inner inner form</h3>

<p>This also has a right aligned menu</p>

<b:navBar brand="BS-4-CF" brandHref="##">

    <!-- Collect the nav links, forms, and other content for toggling -->
   <b:navbarLinks>
        <b:navLink value="Link" href="##" />
        <b:navLink value="Active Link" href="##" active="true" />
        <b:dropMenu value="Details">
            <b:navLink value="Action" href="##" />
            <b:navLink value="Another action" href="##" />
            <b:navLink value="Something else here" href="##" />
			<b:navLink />
			<b:navLink header="Nav header" />
			<b:navLink value="Separated link" href="##" />
          	<b:navLink value="One more separated link" href="##" />
		</b:dropMenu>
     </b:navbarLinks>
      
      <form class="navbar-form navbar-left" role="search">
        	<b:formGroup>        
          	<input type="search" class="form-control" placeholder="Search">
		</b:formGroup>
        <b:commandbutton value="Submit" />
      </form>
      
      
      <b:navbarLinks pull="right">
      	<b:dropMenu value="Help">
 	         <b:navLink value="Action" href="##" />
 		    <b:navLink value="Another action" href="##" />
 		    <b:navLink value="Something else here" href="##" />
 		    <b:navLink />
 		    <b:navLink header="Nav header" />
 		    <b:navLink value="Separated link" href="##" />
 		    <b:navLink value="One more separated link" href="##" />
     	</b:dropMenu>
     </b:navbarLinks>
</b:navBar>
