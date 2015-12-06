component	accessors="true"	{

	property	beanFactory;
	property	framework;
	
	property	settingsService;

	
void function components(required struct rc) output="false"	{
	
	rc.components = settingsService.getComponents();
	}



void function after(required struct rc) output="false"	{
	
	variables.framework.setLayout("pages");
	}	
		


}