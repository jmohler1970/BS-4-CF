
<cfimport prefix="b" taglib="../bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Navigation Examples</b:h1>
			<p>View code for details.</p>
		</b:column>	
	</b:row>
</div>




<b:h2>Introduction</b:h2>


<pre>
&lt;b:navBar brand=&quot;BS-4-CF&quot; brandHref=&quot;##&quot;&gt;
    &lt;b:navbarLinks&gt;
        &lt;b:navLink value=&quot;Home&quot; href=&quot;##&quot;&gt;&lt;/b:navLink&gt;
        &lt;b:navLink value=&quot;Link&quot; href=&quot;##&quot;&gt;&lt;/b:navLink&gt;
        &lt;b:navLink value=&quot;FAQ&quot; href=&quot;##&quot;&gt;&lt;/b:navLink&gt;
        &lt;b:dropMenu value=&quot;Details&quot;&gt;
            &lt;b:navLink value=&quot;Action&quot; href=&quot;##&quot;&gt;&lt;/b:navLink&gt;
            &lt;b:navLink value=&quot;Another action&quot; href=&quot;##&quot;&gt;&lt;/b:navLink&gt;
            &lt;b:navLink value=&quot;Something else here&quot; href=&quot;##&quot;&gt;&lt;/b:navLink&gt;
            &lt;b:navLink&gt;&lt;/b:navLink&gt;
            &lt;b:navLink header=&quot;Nav header&quot;&gt;&lt;/b:navLink&gt;
            &lt;b:navLink value=&quot;Separated link&quot; href=&quot;##&quot;&gt;&lt;/b:navLink&gt;
            &lt;b:navLink value=&quot;One more separated link&quot; href=&quot;##&quot;&gt;&lt;/b:navLink&gt;
        &lt;/b:dropMenu&gt;
    &lt;/b:navbarLinks&gt;
&lt;/b:navBar&gt;	
</pre>	

<b:navBar brand="BS-4-CF" brandHref="##">
    <b:navbarLinks>
        <b:navLink value="Home" href="##"></b:navLink>
        <b:navLink value="Link" href="##"></b:navLink>
        <b:navLink value="FAQ" href="##"></b:navLink>
        <b:dropMenu value="Details">
            <b:navLink value="Action" href="##"></b:navLink>
            <b:navLink value="Another action" href="##"></b:navLink>
            <b:navLink value="Something else here" href="##"></b:navLink>
            <b:navLink></b:navLink>
            <b:navLink header="Nav header"></b:navLink>
            <b:navLink value="Separated link" href="##"></b:navLink>
            <b:navLink value="One more separated link" href="##"></b:navLink>
        </b:dropMenu>
    </b:navbarLinks>
</b:navBar>





<h2>With Inverse text</h2>
<pre>
&lt;b:navBar brand=&quot;BS-4-CF&quot; brandHref=&quot;##&quot; inverse=&quot;true&quot;&gt;
    &lt;b:navbarLinks&gt;
        &lt;b:navLink value=&quot;Home&quot; href=&quot;##&quot;&gt;&lt;/b:navLink&gt;
        &lt;b:navLink value=&quot;Link&quot; href=&quot;##&quot;&gt;&lt;/b:navLink&gt;
        &lt;b:navLink value=&quot;FAQ&quot; href=&quot;##&quot;&gt;&lt;/b:navLink&gt;
    &lt;/b:navbarLinks&gt;
&lt;/b:navBar&gt;
</pre>	

<b:navBar brand="BS-4-CF" brandHref="##" inverse="true">
    <b:navbarLinks>
        <b:navLink value="Home" href="##"></b:navLink>
        <b:navLink value="Link" href="##"></b:navLink>
        <b:navLink value="FAQ" href="##"></b:navLink>
    </b:navbarLinks>
</b:navBar>




<h2>With inner inner form</h2>

<b:navBar brand="BS-4-CF" brandHref="##">

    <!-- Collect the nav links, forms, and other content for toggling -->
   <b:navbarLinks>
        <b:navLink value="Link" href="##" />
        <b:navLink value="Link" href="##" />
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
