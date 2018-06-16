component	accessors="true"	{

	property	beanFactory;
	property	framework;
	
	property	healthService;
	property	uploadService;
	property	gsService;
	

void function health(required struct rc) output="false"	{

	rc.sessioncount = healthService.getSessionCount();
	rc.runningApps	 = healthService.getRunningApplications();
	rc.stSiteInfo	= healthService.getSiteInfo();
		
	rc.version	= gsService.get_site_version();
	}

void function after(require struct rc) output="false"	{
	
	variables.framework.setLayout("pages");
	}	
		


}
