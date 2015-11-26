component	accessors="true"	{

	property	beanFactory;
	property	framework;
	
	property	loginService;
	
	
void function home(required struct rc)	{
	
	rc.loginfail = false;
	
	if (cgi.request_method == "post")	{
			
		if(loginService.doLogin(rc))	{
			variables.framework.redirect("pages.home", "all");
			}
			
		rc.loginfail = true; 			
		} // end post
	}	
	


	
}	