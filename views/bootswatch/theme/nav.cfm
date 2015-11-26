<cfimport prefix="b" taglib="../../_bootstrap">



<b:row>
	<b:column span="12">
     <div class="page-header">
     	<h1 id="nav">Navs</h1>
     </div>
     </b:column>
</b:row>


<b:row>
	<b:column span="4">
     	<b:h2 id="nav-tabs">Tabs</b:h2>
            
           
            
          <b:tabView>
          	<b:tab title="Home" id="home">
          		<p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
          	</b:tab>
          	
          	
          	<b:tab title="Profile" id="profile">
          		<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
               </b:tab>
            
			<b:tab title="disabled" id="disabled" disabled="true">
			     <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.</p>
			</b:tab>
            
			<b:tab title="Action" id="action">
				<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.</p>
			</b:tab>
          </b:tabView>  
          
            
	</b:column>
	
	<b:column span="4">
	<h2 id="nav-pills">Pills</h2>

		
          <b:navbarlinks pills="true">    
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">Profile</a></li>
                <li class="disabled"><a href="#">Disabled</a></li>
                <li class="dropdown">
                    <b:dropButton  value="DropButton">
			     	<li><a href="#">Action</a></li>
					<li><a href="#">Another action</a></li>
					<li><a href="#">Something else here</a></li>
					<li><a href="#">Separated link</a></li>
			    </b:dropButton>

                </li>
          </b:navbarlinks>	                
              
 		<br>

		<b:navbarlinks pills="true" stacked="true">    	

   	            <li class="active"><a href="#">Home</a></li>
                <li><a href="#">Profile</a></li>
                <li class="disabled"><a href="#">Disabled</a></li>
                <li class="dropdown">
                    <b:dropButton  value="DropButton">
			            <li><a href="#">Action</a></li>
					  <li><a href="#">Another action</a></li>
					  <li><a href="#">Something else here</a></li>
					  <li><a href="#">Separated link</a></li>
			    </b:dropButton>
                </li>
          </b:navbarlinks>
		
	</b:column>
	
	<b:column span="4">
	       <h2 id="nav-breadcrumbs">Breadcrumbs</h2>
           
              <ul class="breadcrumb">
                <li class="active">Home</li>
              </ul>

              <ul class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Library</li>
              </ul>

              <ul class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li><a href="#">Library</a></li>
                <li class="active">Data</li>
              </ul>

     </b:column>     
</b:row>


<b:row>
	<b:column span="4">

            <h2 id="pagination">Pagination</h2>

              <ul class="pagination">
                <li class="disabled"><a href="#">&laquo;</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
              </ul>

              <ul class="pagination pagination-lg">
                <li class="disabled"><a href="#">&laquo;</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">&raquo;</a></li>
              </ul>

              <ul class="pagination pagination-sm">
                <li class="disabled"><a href="#">&laquo;</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
              </ul>
	</b:column>
	
	<b:column span="4">

            <h2 id="pager">Pager</h2>

              <ul class="pager">
                <li><a href="#">Previous</a></li>
                <li><a href="#">Next</a></li>
              </ul>

              <ul class="pager">
                <li class="previous disabled"><a href="#">&larr; Older</a></li>
                <li class="next"><a href="#">Newer &rarr;</a></li>
              </ul>
	</b:column>
	
	<b:column span="4">

     </b:column>     
</b:row>
