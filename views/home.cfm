<cfimport prefix="b" taglib="../bootstrap">

 
 
<b:jumbotron>
	<b:h1>Bootstrap for ColdFusion</b:h1>
     <p>Making development safe and quick</p>
     <p><b:commandLink action="?view=getting_started" look="primary" size="lg">Get Started</b:commandLink></p>
</b:jumbotron>




<b:row>
	<b:column span="4">
            <h3><b:icon library="awesome" name="file-o" /> Easy to Install</h3>
            <p>Simply download a Custom tag library and <code>&lt;cfimport&gt;</code> wherever you need it. No messing around with configuration files.</p>
	</b:column>	 

	<b:column span="4">
            <h3><b:icon library="awesome" name="github" /> Open Source</h3>
            <p>Bootstrap for ColdFusion is released under the MIT License and maintained on <a target="_blank" href="https://github.com/jmohler1970">GitHub</a>.</p>
	</b:column>     
          
          
	<b:column span="4">
            <h3><b:icon library="awesome" name="wrench" /> Themes</h3>
            <p>Use the standard Bootstrap theme or Bootswatch Themes. This site show the various Bootswatch themes in action</p>
            
            <b:p><b:commandLink href="?view=theme" value="Learn More" look="primary" /></b:p>
	</b:column>
</b:row>

<b:row>
	<b:column span="4">
          <h3><b:icon library="awesome" name="link" /> Binding</h3>
          <p>Write less code and do more. <q>Binding</q> outputs data without using <code>&lt;cfoutput&gt;</code> tags.</p>
	</b:column>    
		  
	
	<b:column span="4">
          <h3><b:icon library="awesome" name="cloud" /> Rendered</h3>
          <p>This <q>Rendered</q> option is like wrapping your code in a <code>&lt;cfif&gt;</code>. It is much smarter because it is a part of the tags as opposed to wrapping the content.</p>
          
          <b:p><b:commandLink href="?view=using_rendered" value="Learn More" look="primary" /></b:p>
	</b:column>    
		  

	<b:column span="4">
          <h3><b:icon library="awesome" name="cogs" /> Modular</h3>
          <p>Each tag is in a single file. Update the tags to support the functionality you need for your site. tag attributes are sanitized to protect your site from common injection attacks</p>
          
          <b:p><b:commandLink href="?view=esapi" value="Learn More" look="primary" /></b:p>
	</b:column>          

</b:row>