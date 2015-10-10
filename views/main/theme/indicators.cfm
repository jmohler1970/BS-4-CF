<cfimport prefix="b" taglib="../../_bootstrap">



      <!-- Indicators
      ================================================== -->

<b:row>
     <b:column span="12">
		<b:h1 pageHeader="true" id="nav">Indicators</b:h1>
     </b:column>
</b:row>


<b:row>
	<b:column span="12">
     
            <h2>Alerts</h2>
            
            <b:alert look="warning" closeable="true">
  	          <h4>Warning!</h4>
               <p>Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, <a href="#" class="alert-link">vel scelerisque nisl consectetur et</a>.</p>
            </b:alert>
            
     </b:column>     
</b:row>
<b:row>
	<b:column span="4">
		<b:alert look="danger" closeable="true"><strong>Oh snap!</strong> <a href="#" class="alert-link">Change a few things up</a> and try submitting again.</b:alert>
	</b:column>
     
     <b:column span="4">
     	<b:alert look="success" closeable="true"><strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important alert message</a>.</b:alert>
     </b:column>

     
     <b:column span="4">
		<b:alert look="info" closeable="true"> <strong>Heads up!</strong> This <a href="#" class="alert-link">alert needs your attention</a>, but it's not super important.</b:alert>
     </b:column>
</b:row>     

<b:row>
	<b:column span="4">
      
          <h2>Labels</h2>
          <b:label value="Default" />
          <b:label value="Primary"	look="primary" />
          <b:label value="Success"	look="success" />
          <b:label value="Warning"	look="warning" />
          <b:label value="Danger"	look="danger" />
          <b:label value="Info"	look="info" />
          	
            
	</b:column>
     
     <b:column span="4">
          
            <h2>Badges</h2>
            
              <ul class="nav nav-pills">
                <li class="active"><a href="#">Home <b:badge value="10" /></a></li>
                <li><a href="#">Profile <b:badge value="3" /></a></li>
                <li><a href="#">Messages <b:badge value="20" /></a></li>
              </ul>
     </b:column>
</b:row>



<b:row>
	<b:column span="12">
		<b:h1 pageheader="true" id="progress">Progress bars</b:h1>

          
          <b:h3 id="progress-basic">Basic</b:h3>
          <b:progressBar width="60" />
 
 
		<b:h3 id="progress-alternatives">Contextual alternatives</b:h3>
          <b:progressBar width="20" look="info" />
          <b:progressBar width="80" look="success" />
          <b:progressBar width="60" look="warning" />
          <b:progressBar width="40" look="danger" />

          <b:h3 id="progress-striped">Striped</b:h3>
          <b:progressBar width="20" look="info"		stripped="true" />
          <b:progressBar width="80" look="success"	stripped="true" />
          <b:progressBar width="60" look="warning"	stripped="true" />
          <b:progressBar width="40" look="danger"	stripped="true" />

          
          <b:h3 id="progress-animated">Animated</b:h3>
          <b:progressBar width="40" look="success"	animated="true" />


	</b:column>
</b:row>		



