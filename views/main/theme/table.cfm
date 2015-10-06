<cfimport prefix="b" taglib="../../_bootstrap">


      <!-- Tables
      ================================================== -->
      <div class="bs-docs-section">

        <b:row>
          <b:column span="12">
            <div class="page-header">
              <b:h1 id="tables">Tables</b:h1>
            </div>

            <div class="bs-component">
              <b:table hover="true">
                <thead>
                  <b:tr>
                    <b:th>#</b:th>
                    <b:th>Column heading</b:th>
                    <b:th>Column heading</b:th>
                    <b:th>Column heading</b:th>
                  </b:tr>
                </thead>
                <tbody>
                  <b:tr>
                    <b:td>1</b:td>
                    <b:td>Column content</b:td>
                    <b:td>Column content</b:td>
                    <b:td>Column content</b:td>
                  </b:tr>
                  <b:tr>
                    <b:td>2</b:td>
                    <b:td>Column content</b:td>
                    <b:td>Column content</b:td>
                    <b:td>Column content</b:td>
                  </b:tr>
                  <b:tr look="info">
                    <b:td>3</b:td>
                    <b:td>Column content</b:td>
                    <b:td>Column content</b:td>
                    <b:td>Column content</b:td>
                  </b:tr>
                  <b:tr look="success">
                    <b:td>4</b:td>
                    <b:td>Column content</b:td>
                    <b:td>Column content</b:td>
                    <b:td>Column content</b:td>
                  </b:tr>
                  <b:tr look="danger">
                    <b:td>5</b:td>
                    <b:td>Column content</b:td>
                    <b:td>Column content</b:td>
                    <b:td>Column content</b:td>
                  </b:tr>
                  <b:tr look="warning">
                    <b:td>6</b:td>
                    <b:td>Column content</b:td>
                    <b:td>Column content</b:td>
                    <b:td>Column content</b:td>
                  </b:tr>
                  <b:tr look="active">
                    <b:td>7</b:td>
                    <b:td>Column content</b:td>
                    <b:td>Column content</b:td>
                    <b:td>Column content</b:td>
                  </b:tr>
                </tbody>
              </b:table> 
            </div><!-- /example -->
          </b:column>
        </b:row>
      </div>


<b:table>
<b:tr>
	<b:th>Animal</b:th>
	<b:th>Name</b:th>	
</b:tr>
<b:tr>
	<b:td>Cat</b:td>
	<b:td>Fluffy</b:td>	
</tr>
<tr>
	<b:td text="right">Cat</b:td>
	<b:td text="nowrap">Milo</b:td>	
</b:tr>
<b:tr>
	<b:td text="right" tooltip="Feline">Cat</b:td>
	<b:td text="nowrap" rendered="false">Milo</b:td>	
</b:tr>
</b:table>	
	