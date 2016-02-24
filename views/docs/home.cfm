<cfimport prefix="b" taglib="../_bootstrap">

 




<b:jumbotron>
	<b:h1>Bootstrap for ColdFusion</b:h1>
     <p>Making development safe and quick</p>
    <p><b:commandLink action="~/docs/getting_started" look="primary" size="lg">Get Started</b:commandLink></p>
</b:jumbotron>




<b:row>
	<b:column span="4">
            <h3><b:icon library="awesome" name="file-o" /> Easy to Setup</h3>
            <p>Simply download the custom tag library, setup some default options and <code>&lt;cfimport&gt;</code> wherever you need it.</p>
            
            <p><b:commandLink href="~/docs/setup" value="Learn More" look="primary" /></p>
	</b:column>
	
		 

          
	<b:column span="4">
            <h3><b:icon library="awesome" name="css3" /> Themes</h3>
            <p>Use the standard Bootstrap theme or Bootswatch Themes. This site show the various Bootswatch themes in action</p>
            
            <p><b:commandLink href="~/theme" value="Learn More" look="primary" /></p>
	</b:column>



	<b:column span="4" >
          <h3><b:icon library="awesome" name="link" /> i18n</h3>
          <p>Internationalization support is built in. Supports both ColdFusion and PHP language files. Write less code and do more.</p>
          
          <p><b:commandLink href="~/common" value="Learn More" look="primary" /></p>
	</b:column> 
</b:row>

<b:row> 
	
	
	<b:column span="4">
          <h3><b:icon library="awesome" name="tag" />  Smart tags</h3>
          <p>This <q>Rendered</q> option is like wrapping your code in a <code>&lt;cfif&gt;</code>. It is much smarter because it is a part of the tags as opposed to wrapping the content. 
	          <q>Binding</q> outputs data without using <code>&lt;cfoutput&gt;</code> tags.</p>
	     
	     <p>Includes Antisamy to protect your site from common injection attacks</p>
          
          <p><b:commandLink href="~/common" value="Learn More" look="primary" /></p>
	</b:column>    
		
	<b:column span="4">
     	<h3><b:icon library="awesome" name="cogs" /> PlumaCMS</h3>	
		 
		<p>Built-in content management system which provides all kinds of examples</p>
          
          <p><b:commandLink href="~/login" value="Login into Pluma" look="primary" /></p> 
	</b:column>
		  
	<!---
	<b:column span="4">
          <h3><b:icon library="awesome" name="cogs" /> Antisamy</h3>
          <p>Most tag attributes are sanitized to protect your site from common injection attacks</p>
          
          <p><b:commandLink href="~/main/antisamy" value="Learn More" look="primary" /></p>
	</b:column>          
	--->
	
	<b:column span="4">
            <h3><b:icon library="awesome" name="github" /> Open Source</h3>
            <p>Bootstrap for ColdFusion is released under the MIT License and is maintained at <a target="_blank" href="https://github.com/jmohler1970">GitHub</a>.</p>
            
              <p><b:commandLink href="https://github.com/jmohler1970" value="Learn More" look="primary" /></p>
	</b:column>     
          

</b:row>

