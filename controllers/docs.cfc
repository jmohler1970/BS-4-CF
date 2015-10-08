component	accessors="true"	{

	property	beanFactory;
	property	framework;
	
	property	sampledataService;


	
void function tables(required struct rc)	{
	
	
	rc.qryData = sampledataService.getTable();	// sample data for table tag
	
	
	} // end tables
	
	
	
}