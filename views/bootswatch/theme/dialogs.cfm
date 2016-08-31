<cfimport prefix="b" taglib="../../../vendor/tags/bootstrap">




      <!-- Dialogs
      ================================================== -->


<b:row>
	<b:column span="12">
     	<div class="page-header">
              <b:h1 id="dialogs">Dialogs</b:h1>
          </div>
     </b:column>
</b:row>


<b:row>
	<b:column span="6">
	
	<b:h2>Modals</b:h2>
	
<!-- Button trigger modal -->
<b:button size="lg" data-toggle="modal" data-target="##myModal" value="Launch demo modal" />



<b:modal id="myModal" title="Modal Example" styleClass="modalPseudoClass"
         closable="false" close-on-escape="false" backdrop="false">
    <p>A new 35 km (22 mi)-long bypass channel of Egypt's Suez Canal is officially opened, approximately doubling the canal's capacity.</p>

</b:modal>


	</b:column>	
	<b:column span="6">

          <b:h2>Popovers</b:h2>

              <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="left" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Left</button>

              <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="top" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Top</button>

              <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus
              sagittis lacus vel augue laoreet rutrum faucibus.">Bottom</button>

              <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="right" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Right</button>
  
     
          <b:h2>Tooltips</b:h2>

          <b:button tooltipPosition="left" 	tooltip="Tooltip on left"	value="Left" />

          <b:button tooltipPosition="top" 	tooltip="Tooltip on top" 	value="Top" />

          <b:button tooltipPosition="bottom" tooltip="Tooltip on bottom"	value="Bottom" />

          <b:button tooltipPosition="right" 	tooltip="Tooltip on right"	value="Right" />
	
	</b:column>
</b:row>	 



