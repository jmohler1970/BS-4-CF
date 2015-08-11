<cfimport prefix="b" taglib="../bootstrap">


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

            <p class="bs-component">
              <b:a href="##">Default</b:a>
              <b:a href="##" look="primary">Primary</b:a>
              <b:a href="##" look="success">Success</b:a>
              <b:a href="##" look="info">Info</b:a>
              <b:a href="##" look="warning">Warning</b:a>
              <b:a href="##" look="danger">Danger</b:a>
              <b:a href="##" look="link">Link</b:a>
            </p>

            <p class="bs-component">
	         <b:a href="##">Default</b:a>
              <b:a href="##" disabled="true" look="primary">Primary</b:a>
              <b:a href="##" disabled="true" look="success">Success</b:a>
              <b:a href="##" disabled="true" look="info">Info</b:a>
              <b:a href="##" disabled="true" look="warning">Warning</b:a>
              <b:a href="##" disabled="true" look="danger">Danger</b:a>
              <b:a href="##" disabled="true" look="link">Link</b:a>   
            </p>


            <div style="margin-bottom: 15px;">
              <div class="btn-toolbar bs-component" style="margin: 0;">
             
                <b:buttonGroup>
                  <b:a href="##">Default</b:a>
                  <b:dropButton>
                  	<b:navLink href="##" value="Action" />
                  	<b:navLink href="##" value="Another Action" />
                  	<b:navLink href="##" value="Something else here" />
                  	<b:navLink />
                  	<b:navLink href="##" value="Separated link" />
                  </b:dropButton>
                </b:buttonGroup>

                <div class="btn-group">
                  <b:a href="##" look="primary">Primary</b:a>
                  <b:a href="##" look="primary" dropdown="true" />

                  <ul class="dropdown-menu">
                    <li><a href="##">Action</a></li>
                    <li><a href="##">Another action</a></li>
                    <li><a href="##">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="##">Separated link</a></li>
                  </ul>
                </div>
 
                <div class="btn-group">
                  <b:a href="##" look="success">Success</b:a>
                  <b:a href="##" look="success" dropdown="true" />

                  <ul class="dropdown-menu">
                    <li><a href="##">Action</a></li>
                    <li><a href="##">Another action</a></li>
                    <li><a href="##">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="##">Separated link</a></li>
                  </ul>
                </div>

                <div class="btn-group">
                  <b:a href="##" look="info">Info</b:a>
                  <b:a href="##" look="info" dropdown="true" />
                  <ul class="dropdown-menu">
                    <li><a href="##">Action</a></li>
                    <li><a href="##">Another action</a></li>
                    <li><a href="##">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="##">Separated link</a></li>
                  </ul>
                </div>

                <div class="btn-group">
                  <b:a href="##" look="warning">Warning</b:a>
                  <a href="##" class="btn btn-warning dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="##">Action</a></li>
                    <li><a href="##">Another action</a></li>
                    <li><a href="##">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="##">Separated link</a></li>
                  </ul>
                </div>
              </div>
            </div>

            <p class="bs-component">
              <b:a href="##" look="primary" size="lg">Large button</b:a>
              <b:a href="##" look="primary">Default button</b:a>
              <b:a href="##" look="primary" size="sm">Small button</b:a>
              <b:a href="##" look="primary" size="xs">Mini button</b:a>
            </p>

          </div>
          <div class="col-lg-5">

            <p class="bs-component">
              <b:a href="##" styleClass="btn-block">Block level button</b:a>
            </p>


            <div class="bs-component" style="margin-bottom: 15px;">
              <div class="btn-group btn-group-justified">
                <b:a href="##">Left</b:a>
                <b:a href="##">Middle</b:a>
                <b:a href="##">Right</b:a>
              </div>
            </div>

            <div class="bs-component" style="margin-bottom: 15px;">
              <div class="btn-toolbar">
          		<b:buttonGroup>
					<b:a href="##">1</b:a>
					<b:a href="##">2</b:a>
					<b:a href="##">3</b:a>
					<b:a href="##">4</b:a>
			   	</b:buttonGroup>

				<b:buttonGroup>
					<b:a href="##">5</b:a>
					<b:a href="##">6</b:a>
					<b:a href="##">7</b:a>
               	</b:buttonGroup>
                	

				<b:buttonGroup>
               		<b:a href="##">8</b:a>
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
                  <b:a href="##">Button</b:a>
                  <b:a href="##">Button</b:a>
                  <b:a href="##">Button</b:a>
                  <b:a href="##">Button</b:a>
              </b:buttonGroup>
            </div>

          </div>
        </b:row>






