component	accessors="true"	{

	property	beanFactory;
	property	framework;
	
	property	settingsService;

	
void function home(required struct rc) output="false"	{
	
	param rc.slug = ""; // return page
	
	if (cgi.request_method == "post")	{
			
		settingsService.setWebsite(rc);
		settingsService.setUser(rc);
		
		application.lang = rc.lang;
		} // end post

	rc.append(settingsService.getWebsite());
	rc.append(settingsService.getUser());
	
	}
	

void function flushCache(require struct rc)	 output="false"	{
	
	settingsService.flushCache();
	
	variables.framework.redirect(".home");
	}
	
	
void function after(require struct rc) output="false"	{
	
	variables.framework.setLayout("pages");
	}	
		

	
}	