
<cfimport prefix="b" taglib="../bootstrap">



<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1>Tab Examples</b:h1>
			<p>View code for details.</p>
		</b:column>	
	</b:row>
</div>




<b:h2>Introduction</b:h2>


<pre>
          
          &lt;b:tabView&gt;
          	&lt;b:tab title=&quot;Home&quot; id=&quot;home&quot;&gt;
          		&lt;p&gt;Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.&lt;/p&gt;
          	&lt;/b:tab&gt;
          	
          	
          	&lt;b:tab title=&quot;Profile&quot; id=&quot;profile&quot;&gt;
          		&lt;p&gt;Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.&lt;/p&gt;
               &lt;/b:tab&gt;
            
			&lt;b:tab title=&quot;disabled&quot; disabled=&quot;true&quot;&gt;
			     &lt;p&gt;Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.&lt;/p&gt;
			&lt;/b:tab&gt;
            
			&lt;b:tab title=&quot;Action&quot; id=&quot;action&quot;&gt;
				&lt;p&gt;Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.&lt;/p&gt;
			&lt;/b:tab&gt;
          &lt;/b:tabView&gt;  
          

</pre>	


 
           
            
<b:tabView>
	<b:tab title="Home" id="home">
		<p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
	</b:tab>
	
	
	<b:tab title="Profile" id="profile">
		<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
     </b:tab>
  
	<b:tab title="disabled" disabled="true">
	     <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.</p>
	</b:tab>
  
	<b:tab title="Action" id="action">
		<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.</p>
	</b:tab>
</b:tabView>



<h2>AJAX powered tab</h2>

<p>Profile is supposed to be the active tab</p>


<b:tabView activeIndex="2">
	<b:tab title="Home" 	id="home2"	data-url="ajax/home.html" />
	<b:tab title="Profile" 	id="profile2"	data-url="ajax/profile.html" />
	<b:tab title="Disabled" 	id="disabled2"	data-url="ajax/home.html" disabled="true" />
	<b:tab title="Action" 	id="action2"	data-url="ajax/action.html" />
</b:tabView>	
	
	
	
<script type="text/javascript">	
$( document ).ready(function() {
	
	// load active tab no matter what
	$('div.active').load($('li.active a[data-url]').attr('data-url'), function (data) {
		$('.active a').tab('show');
		});
		
	
	// load normal tab clicks
	$('li a[data-url]').click(function(e) {
	    e.preventDefault();
	    
	    var targ = $(this).attr('data-url');
	    
	    var href = this.hash;
	    
		$(href).load(targ, function(data) {
			$(this).tab('show');
		});
	
	});


});
</script>
