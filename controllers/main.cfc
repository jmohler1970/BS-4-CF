component	accessors="true"	{

	property	beanFactory;
	property	framework;
	

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
	
	
}	