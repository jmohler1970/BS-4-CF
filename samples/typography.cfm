<cfimport prefix="b" taglib="../bootstrap">


<cfset rc = { heading = "This is a sample heading using bind" }>



      <!-- Typography
      ================================================== -->

<b:row>
	<b:column span="12">
          <div class="page-header">
          	<b:h1 id="type">Typography</b:h1>
		</div>
     </b:column>
</b:row>

        <!-- Headings -->

 <b:row>
	<b:column span="4">
          <b:h1 binding="heading" />
          <b:h2 binding="heading" />
          <b:h3 binding="heading" />
          <b:h4 binding="heading" />
          <b:h5 binding="heading" />
          <b:h6 binding="heading" />
          <b:p styleClass="lead">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</b:p>
          <b:p styleClass="lead" rendered="false">This should not be seen on the page</b:p>
	</b:column>
	
	<b:column span="4">
          <b:h2>Example body text</b:h2>
          <b:p>Nullam quis risus eget <a href="##">urna mollis ornare</a> vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</b:p>
          <b:p><small>This line of text is meant to be treated as fine print.</small></b:p>
          <b:p>The following snippet of text is <strong>rendered as bold text</strong>.</b:p>
          <b:p>The following snippet of text is <em>rendered as italicized text</em>.</b:p>
          <b:p>An abbreviation of the word attribute is <abbr title="attribute">attr</abbr>.</b:p>
     </b:column>
     
     <b:column span="4">
		<b:h2>Emphasis classes</b:h2>
          <b:p text="muted">Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.</b:p>
          <b:p text="primary">Nullam id dolor id nibh ultricies vehicula ut id elit.</b:p>
          <b:p text="warning">Etiam porta sem malesuada magna mollis euismod.</b:p>
          <b:p text="danger">Donec ullamcorper nulla non metus auctor fringilla.</b:p>
          <b:p text="success">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</b:p>
          <b:p text="info">Maecenas sed diam eget risus varius blandit sit amet non magna.</b:p>
	</b:column>
	
	<b:column span="4">
		<b:h2>Passthrough classes</b:h2>
		
		
          <b:p styleClass="bg-muted" style="padding : 15px;">Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.</b:p>
          <b:p styleClass="bg-primary" style="padding : 15px;">Nullam id dolor id nibh ultricies vehicula ut id elit.</b:p>
          <b:p styleClass="bg-warning" style="padding : 15px;">Etiam porta sem malesuada magna mollis euismod.</b:p>
          <b:p styleClass="bg-danger" style="padding : 15px;">Donec ullamcorper nulla non metus auctor fringilla.</b:p>
          <b:p styleClass="bg-success" style="padding : 15px;">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</b:p>
          <b:p styleClass="bg-info" style="padding : 15px;">Maecenas sed diam eget risus varius blandit sit amet non magna.</b:p>
    
	</b:column>
</b:row>
         

<b:row>
	<b:column span="12">
          <div class="page-header">
          	<b:h2 id="type">Blockquotes</b:h2>
		</div>
     </b:column>
</b:row>         
         
         
<b:row>
	<b:column span="6">
          <b:blockquote>
                <b:p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</b:p>
                <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
          </b:blockquote>
	</b:column>

	<b:column span="6">
          <b:blockquote reverse="true">
                <b:p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</b:p>
                <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
          </b:blockquote>
	</b:column>
</b:row>	

  
         