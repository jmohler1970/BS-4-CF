<cfimport prefix="b" taglib="../../vendor/tags/bootstrap">


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
					<label for="inputUser" class="col-lg-4 control-label"><b:outputText key="username" /></label>
					<div class="col-lg-8">
						<input type="text" class="form-control" name="usr" placeholder="" required="required" />
					</div>
				</b:formGroup>
                  
				<b:formGroup>	
					<label for="inputPassword" class="col-lg-4 control-label"><b:outputText key="password" /></label>
					<div class="col-lg-8">
						<input type="password" class="form-control" name="pwd" placeholder="Password" required="required" />
					</div>
				</b:formGroup>
			</b:fieldset>
	
			
			<b:formGroup>
				<div class="col-lg-4">
			
				</div>
				<div class="col-lg-4">
					<b:commandButton key="Login" />
				</div>

			</b:formGroup>	

		</form>
		
		</b:well>
	</b:column>
</b:row>


<b:row>
	<b:column span="2" offset="4">
		<b:commandLink key="BACK_TO_WEBSITE" href="~/wiki" />
	</b:column>
			
	<b:column span="2">
		<b:commandLink key="FORGOT_PWD" href="~/resetpassword" />
	</b:column>	
</b:row>


<cfif isDebugMode()>
	<b:alert>Username is admin, Password is admin123</b:alert>
</cfif>	
