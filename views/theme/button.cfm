<cfimport prefix="b" taglib="../../bootstrap">


<!-- Buttons
      ================================================== -->
      
      <div class="page-header">
          <b:row>
            <div class="col-lg-12">
              <h1 id="buttons">Buttons</h1>
            </div>
          </b:row>
      </div>     
        

         <b:row>
          <div class="col-lg-7">

            <p>
              <b:commandLink action="##">Default</b:commandLink>
              <b:commandLink action="##" look="primary">Primary</b:commandLink>
              <b:commandLink action="##" look="success">Success</b:commandLink>
              <b:commandLink action="##" look="info">Info</b:commandLink>
              <b:commandLink action="##" look="warning">Warning</b:commandLink>
              <b:commandLink action="##" look="danger">Danger</b:commandLink>
              <b:commandLink action="##" look="link">Link</b:commandLink>
            </p>

            <p>
	         <b:commandLink action="##">Default</b:commandLink>
              <b:commandLink action="##" disabled="true" look="primary">Primary</b:commandLink>
              <b:commandLink action="##" disabled="true" look="success">Success</b:commandLink>
              <b:commandLink action="##" disabled="true" look="info">Info</b:commandLink>
              <b:commandLink action="##" disabled="true" look="warning">Warning</b:commandLink>
              <b:commandLink action="##" disabled="true" look="danger">Danger</b:commandLink>
              <b:commandLink action="##" disabled="true" look="link">Link</b:commandLink>   
            </p>


            <div style="margin-bottom: 15px;">
              <div class="btn-toolbar bs-component" style="margin: 0;">
             
                <b:buttonGroup>
                  <b:commandLink action="##">Default</b:commandLink>
                  <b:dropButton>
                  	<b:navLink action="##" value="Action" />
                  	<b:navLink action="##" value="Another Action" />
                  	<b:navLink action="##" value="Something else here" />
                  	<b:navLink />
                  	<b:navLink action="##" value="Separated link" />
                  </b:dropButton>
                </b:buttonGroup>

                <div class="btn-group">
                  <b:commandLink action="##" look="primary">Primary</b:commandLink>
                  <b:commandLink action="##" look="primary" dropdown="true" />

                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
 
                <div class="btn-group">
                  <b:commandLink action="##" look="success">Success</b:commandLink>
                  <b:commandLink action="##" look="success" dropdown="true" />

                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>

                <div class="btn-group">
                  <b:commandLink action="##" look="info">Info</b:commandLink>
                  <b:commandLink action="##" look="info" dropdown="true" />
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>

                <div class="btn-group">
                  <b:commandLink action="##" look="warning">Warning</b:commandLink>
                  <a href="#" class="btn btn-warning dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
              </div>
            </div>

            <p class="bs-component">
              <b:commandLink action="##" look="primary" size="lg">Large button</b:commandLink>
              <b:commandLink action="##" look="primary">Default button</b:commandLink>
              <b:commandLink action="##" look="primary" size="sm">Small button</b:commandLink>
              <b:commandLink action="##" look="primary" size="xs">Mini button</b:commandLink>
            </p>

          </div>
          <div class="col-lg-5">

            <p class="bs-component">
              <b:commandLink action="##" styleClass="btn-block">Block level button</b:commandLink>
            </p>


            <div class="bs-component" style="margin-bottom: 15px;">
              <div class="btn-group btn-group-justified">
                <b:commandLink action="##">Left</b:commandLink>
                <b:commandLink action="##">Middle</b:commandLink>
                <b:commandLink action="##">Right</b:commandLink>
              </div>
            </div>

            <div class="bs-component" style="margin-bottom: 15px;">
              <div class="btn-toolbar">
          		<b:buttonGroup>
					<b:commandLink action="##">1</b:commandLink>
					<b:commandLink action="##">2</b:commandLink>
					<b:commandLink action="##">3</b:commandLink>
					<b:commandLink action="##">4</b:commandLink>
			   	</b:buttonGroup>

				<b:buttonGroup>
					<b:commandLink action="##">5</b:commandLink>
					<b:commandLink action="##">6</b:commandLink>
					<b:commandLink action="##">7</b:commandLink>
               	</b:buttonGroup>
                	

				<b:buttonGroup>
               		<b:commandLink action="##">8</b:commandLink>
					<b:dropButton value="Dropdown">
               			<b:navLink action="##" value="Dropdownlink" />
						<b:navLink action="##" value="Dropdownlink" />
						<b:navLink action="##" value="Dropdownlink" />
					</b:dropButton>
				</b:buttonGroup>
			</div>
            </div>

            <div class="bs-component">
              <b:buttonGroup orientation="vertical">
                  <b:commandLink action="##">Button</b:commandLink>
                  <b:commandLink action="##">Button</b:commandLink>
                  <b:commandLink action="##">Button</b:commandLink>
                  <b:commandLink action="##">Button</b:commandLink>
              </b:buttonGroup>
            </div>

          </div>
        </b:row>






