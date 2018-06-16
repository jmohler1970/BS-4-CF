component	accessors="true"	{

	property	beanFactory;
	property	framework;
	
	property	settingsService;
	
	
void function home(required struct rc)	{
	
	rc.loginfail = false;
	
	if (cgi.request_method == "post")	{
			
		if(settingsService.doLogin(rc.usr, rc.pwd))	{
			session.authenticated = true;
			application.lang = settingsService.getUser(rc.usr).lang;
			
			variables.framework.redirect("pages.home", "all");
			}
			
		rc.loginfail = true; 			
		} // end post
	}	
	
void function logout(required struct rc)	{
	
	session.authenticated = false;
	variables.framework.redirect(".home", "all");
	}

	
}	