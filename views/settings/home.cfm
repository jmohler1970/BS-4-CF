<cfimport prefix="b" taglib="../_bootstrap">



<b:h1 key="website_settings" />


<form action="?" method="post">
	
<b:row>
	<b:column span="6">	
	<b:formGroup>
		<label class="control-label"><b:outputText key="label_website" /></label>
		
		<cfoutput><input type="text" class="form-control" name="sitename" value="#rc.sitename#" /></cfoutput>
			
	</b:formGroup>
	
	</b:column>
	   
     <b:column span="6">	
	
	<b:formGroup>
		<label class="control-label"><b:outputText key="label_baseurl" /></label>
	
		<cfoutput><input type="text" class="form-control" name="siteurl" value="#rc.siteurl#" /></cfoutput>
		
	</b:formGroup>


	</b:column>
	
</b:row>	

<b:row>
	<b:column span="6">
		<label class="control-label"><b:outputText key="choose_theme" /></label>
	
		<select name="template" class="form-control">
			<cfoutput>
			<option value="#rc.template#" selected="selected">#rc.template#</option>
			<cfloop index="i" list="Default,Cerulean,Cosmo,Cyborg,Darkly,Flatly,Journal,Lumen,Paper,Readable,Sandstone,Simplex,Slate,Spacelab,Superhero,United,Yeti">
				<option value="#i#">#i#</option>
			</cfloop>
			</cfoutput>
		</select>	
	
	</b:column>
</b:row>		

	
<b:row>
	<b:column span="6">
		<br />
		<b:commandLink key="FLUSHCACHE" href="~/settings/flushcache" size="sm" />
	</b:column>
</b:row>	



<b:h1 key="side_user_profile" />


<b:row>

	<b:column span="6">
	     <b:formGroup>
			<label class="control-label"><b:outputText key="label_username" /></label>
			<cfoutput><input type="text" class="form-control" name="usr" value="#rc.usr#" readonly="readonly" /></cfoutput>
		</b:formGroup>
	</b:column>

	<b:column span="6">
		<b:formGroup>
			<label for="inputEmail" class="control-label"><b:outputText key="label_email" /></label>

			<cfoutput><input type="text" class="form-control" name="email" placeholder="Email" value="#rc.email#" /></cfoutput>
		</b:formGroup>
	</b:column>
</b:row>
	
<b:row>
	<b:column span="6">
		<b:formGroup>
			<label class="control-label"><b:outputText key="LABEL_DISPNAME" /></label>
			<h6><small><b:outputText key="DISPLAY_NAME" /></small></h6>

			<cfoutput><input type="text" class="form-control" name="name" value="#rc.name#" /></cfoutput>
		</b:formGroup>
	</b:column>   
</b:row>

<b:row>
	<b:column span="6">
		<label class="control-label"><b:outputText key="LOCAL_TIMEZONE" /></label>
		
		<select class="form-control" name="timezone">
			<cfoutput><option value="#rc.timezone#" selected="selected">#rc.timezone#</option></cfoutput>
			<cfinclude template="inc/timezone_options.txt">
		</select>	

	</b:column>   

	<b:column span="6">
		<label class="control-label"><b:outputText key="LANGUAGE" /></label>
		
		<select class="form-control" name="lang">
			<cfoutput>
			<option value="#rc.lang#" selected="selected">#rc.lang#</option>
			<cfloop index="lang" list="#application.Bootstrap.arLang.ToList()#">
				<option value="#lang#">#lang#</option>
			</cfloop>
			</cfoutput> 
		</select>
	</b:column>   
</b:row>


<b:row>	   
	<b:column span="6">
		<b:selectBooleanCheckbox name="htmleditor" look="success" checked="#rc.htmleditor#"><b><b:outputText key="ENABLE_HTML_ED" /></b></b:selectBooleanCheckbox>
	</b:column>	
</b:row> 
	   
<b:row>	   
     <b:column span="6">
     
     	<h6><small><b:outputText key="ONLY_NEW_PASSWORD" /></small></h6>
	             
		<b:formGroup>	
			<label for="sitepwd" class="control-label"><b:outputText key="NEW_PASSWORD" /></label>
		
			<input type="password" class="form-control" name="sitepwd" value="" />
		</b:formGroup>

     </b:column>				

     <b:column span="6">
     
     	<h6><small>&nbsp;</small></h6>
	             
		<b:formGroup>	
			<label for="sitepwd_confirm" class="control-label"><b:outputText key="CONFIRM_PASSWORD" /></label>
		
			<input type="password" class="form-control" name="sitepwd_confirm" />
		</b:formGroup>

     </b:column>	
</b:row>

<b:row>	   
     <b:column span="6">
		<b:commandButton key="BTN_SAVESETTINGS" />
     </b:column>	
</b:row>

	
</form>	

