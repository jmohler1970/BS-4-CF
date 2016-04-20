<cfimport prefix="b" taglib="../../../vendor/tags/bootstrap">


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
              <b:commandLink href="##">Default</b:commandLink>
              <b:commandLink href="##" look="primary">Primary</b:commandLink>
              <b:commandLink href="##" look="success">Success</b:commandLink>
              <b:commandLink href="##" look="info">Info</b:commandLink>
              <b:commandLink href="##" look="warning">Warning</b:commandLink>
              <b:commandLink href="##" look="danger">Danger</b:commandLink>
              <b:commandLink href="##" look="link">Link</b:commandLink>
            </p>

            <p>
	         <b:commandLink href="##" disabled="true">Default</b:commandLink>
              <b:commandLink href="##" disabled="true" look="primary">Primary</b:commandLink>
              <b:commandLink href="##" disabled="true" look="success">Success</b:commandLink>
              <b:commandLink href="##" disabled="true" look="info">Info</b:commandLink>
              <b:commandLink href="##" disabled="true" look="warning">Warning</b:commandLink>
              <b:commandLink href="##" disabled="true" look="danger">Danger</b:commandLink>
              <b:commandLink href="##" disabled="true" look="link">Link</b:commandLink>   
            </p>


            <div style="margin-bottom: 15px;">
              <div class="btn-toolbar bs-component" style="margin: 0;">
             
                <b:buttonGroup>
                  <b:commandLink href="##">Default</b:commandLink>
                  <b:dropButton>
                  	<b:navLink href="##" value="Action" />
                  	<b:navLink href="##" value="Another Action" />
                  	<b:navLink href="##" value="Something else here" />
                  	<b:navLink />
                  	<b:navLink href="##" value="Separated link" />
                  </b:dropButton>
                </b:buttonGroup>

                <div class="btn-group">
                  <b:commandLink href="##" look="primary">Primary</b:commandLink>
                  <b:commandLink href="##" look="primary" dropdown="true" />

                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
 
                <div class="btn-group">
                  <b:commandLink href="##" look="success">Success</b:commandLink>
                  <b:commandLink href="##" look="success" dropdown="true" />

                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>

                <div class="btn-group">
                  <b:commandLink href="##" look="info">Info</b:commandLink>
                  <b:commandLink href="##" look="info" dropdown="true" />
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>

                <div class="btn-group">
                  <b:commandLink href="##" look="warning">Warning</b:commandLink>
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
              <b:commandLink href="##" look="primary" size="lg">Large button</b:commandLink>
              <b:commandLink href="##" look="primary">Default button</b:commandLink>
              <b:commandLink href="##" look="primary" size="sm">Small button</b:commandLink>
              <b:commandLink href="##" look="primary" size="xs">Mini button</b:commandLink>
            </p>

          </div>
          <div class="col-lg-5">

            <p class="bs-component">
              <b:commandLink href="##" styleClass="btn-block">Block level button</b:commandLink>
            </p>


            <div class="bs-component" style="margin-bottom: 15px;">
              <div class="btn-group btn-group-justified">
                <b:commandLink href="##">Left</b:commandLink>
                <b:commandLink href="##">Middle</b:commandLink>
                <b:commandLink href="##">Right</b:commandLink>
              </div>
            </div>

            <div class="bs-component" style="margin-bottom: 15px;">
              <div class="btn-toolbar">
          		<b:buttonGroup>
					<b:commandLink href="##">1</b:commandLink>
					<b:commandLink href="##">2</b:commandLink>
					<b:commandLink href="##">3</b:commandLink>
					<b:commandLink href="##">4</b:commandLink>
			   	</b:buttonGroup>

				<b:buttonGroup>
					<b:commandLink href="##">5</b:commandLink>
					<b:commandLink href="##">6</b:commandLink>
					<b:commandLink href="##">7</b:commandLink>
               	</b:buttonGroup>
                	

				<b:buttonGroup>
               		<b:commandLink href="##">8</b:commandLink>
					<b:dropButton value="Dropdown">
               			<b:navLink href="##" value="Dropdownlink" />
						<b:navLink href="##" value="Dropdownlink" />
						<b:navLink href="##" value="Dropdownlink" />
					</b:dropButton>
				</b:buttonGroup>
			</div>
            </div>

            <div class="bs-component">
              <b:buttonGroup orientation="vertical">
                  <b:commandLink href="##">Button</b:commandLink>
                  <b:commandLink href="##">Button</b:commandLink>
                  <b:commandLink href="##">Button</b:commandLink>
                  <b:commandLink href="##">Button</b:commandLink>
              </b:buttonGroup>
            </div>

          </div>
        </b:row>






