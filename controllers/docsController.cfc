component	accessors="true"	{

	property	beanFactory;
	property	framework;
	
	property	sampledataService;


void function before(required struct rc)	{
	
	param rc.color = "";
	
	rc.lstColor = "red,pink,purple,deep-purple,
		indigo,blue,light-blue,cyan,
		teal,green,light-green,lime,
		yellow,amber,orange,deep-orange,
		grey,blue-grey,black";
	}


void function cache(required struct rc)	{
	
	// thanks to Brian Love:  http://brianflove.com/2015/01/14/ehcache-regions-in-coldfusion/
	
	// java stuff
	local.cacheManager 	= createObject('java', 'net.sf.ehcache.CacheManager').getInstance();
	rc.arRegions 		= local.cacheManager.getCacheNames(); // this is a mix of CF and Java
	
	
	
	if (rc.keyExists("flush"))	{
		for (local.region in rc.arRegions)	{
			CacheRemoveAll(local.region); 
			}
		} // end if	

	} 


	
void function tables(required struct rc)	{
	
	
	rc.qryData = sampledataService.getTable();	// sample data for table tag
	
	
	} // end tables
	

	
}