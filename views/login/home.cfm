<cfimport prefix="b" taglib="../_bootstrap">


<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>


<b:row>
	<b:column span="4" offset="4">


	<b:alert look="danger" key="login_failed" processed="#rc.loginfail#" />
 		
		<b:well>

		<form class="form-horizontal" action="?" method="post">
			<b:fieldset key="Login">
	
              		<b:formGroup>
					<label for="inputEmail" class="col-lg-4 control-label">Email</label>
					<div class="col-lg-8">
						<input type="text" class="form-control" name="email" placeholder="Email" required="required" />
					</div>
				</b:formGroup>
                  
				<b:formGroup>	
					<label for="inputPassword" class="col-lg-4 control-label">Password</label>
					<div class="col-lg-8">
						<input type="password" class="form-control" name="pwd" placeholder="Password" required="required" />
					</div>
				</b:formGroup>
			</b:fieldset>
	
			
			<b:formGroup>
				<div class="col-lg-4">
			
				</div>
				<div class="col-lg-8">
					<b:commandButton key="Login" />
				</div>
			</b:formGroup>		

		</form>
		
		</b:well>
	</b:column>
</b:row>

<cfif isDebugMode()>
	<b:alert>Email is james.mohler@me.com, Password is admin123</b:alert>
</cfif>	
