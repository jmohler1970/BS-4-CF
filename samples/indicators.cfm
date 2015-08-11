<cfimport prefix="b" taglib="../bootstrap">



      <!-- Indicators
      ================================================== -->


<b:row>
     <b:column span="12">
       <div class="page-header">
         <h1 id="nav">Indicators</h1>
       </div>
     </b:column>
</b:row>

<b:row>
	<b:column span="12">
     
            <h2>Alerts</h2>
            
            <b:alert severity="warning" closeable="true">
  	          <h4>Warning!</h4>
               <p>Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, <a href="#" class="alert-link">vel scelerisque nisl consectetur et</a>.</p>
            </b:alert>
            
     </b:column>     
</b:row>
<b:row>
	<b:column span="4">
		<b:alert severity="danger" closeable="true"><strong>Oh snap!</strong> <a href="#" class="alert-link">Change a few things up</a> and try submitting again.</b:alert>
	</b:column>
     
     <b:column span="4">
     	<b:alert severity="success" closeable="true"><strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important alert message</a>.</b:alert>
     </b:column>

     
     <b:column span="4">
		<b:alert severity="info" closeable="true"> <strong>Heads up!</strong> This <a href="#" class="alert-link">alert needs your attention</a>, but it's not super important.</b:alert>
     </b:column>
</b:row>     

<b:row>
	<b:column span="4">
      
          <h2>Labels</h2>
          <b:label text="Default" />
          <b:label text="Primary"	severity="primary" />
          <b:label text="Success"	severity="success" />
          <b:label text="Warning"	severity="warning" />
          <b:label text="Danger"	severity="danger" />
          <b:label text="Info"	severity="info" />
          	
            
	</b:column>
     
     <b:column span="4">
          
            <h2>Badges</h2>
            
              <ul class="nav nav-pills">
                <li class="active"><a href="#">Home <b:badge value="10" /></a></li>
                <li><a href="#">Profile <b:badge value="3" /></a></li>
                <li><a href="#">Messages <b:badge value="20" /></a></li>
              </ul>
            </div>
          
     </b:column>
</b:row>




