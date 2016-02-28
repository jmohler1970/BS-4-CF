component	{


	
numeric function getSessionCount()  output="false"	{
	local.oSession = createObject("java","coldfusion.runtime.SessionTracker");
	return local.oSession.getSessionCount();
	}


numeric function getApplicationSessionCount(required string appName) output="false"	{
	local.oSession = createObject("java","coldfusion.runtime.SessionTracker");
	local.mySessions= local.oSession.getSessionCollection(arguments.appName);
	return StructCount(mySessions);
   	}


array function getRunningApplications()		output="false"	{

      var oApp = createObject("java","coldfusion.runtime.ApplicationScopeTracker");
      var applications = oApp.getApplicationKeys();   
      var availApps = ArrayNew(1);

	 while (applications.hasNext())	{
		availApps.append(applications.next());
		}
   
	return availApps;
	}



/* System functions. Use sparingly */
struct function getSiteInfo() output="false"	{
	
	var oSystem = createObject('java','java.lang.System');
	var jremodel 	= oSystem.getProperty("sun.arch.data.model");
	var allProp		= oSystem.getProperties(); 
	
	
	
	var stResult = {CFVERSION = server.ColdFusion.ProductVersion, 
		CFLEVEL 		= server.ColdFusion.ProductLevel,
		JREBIT		= allProp["sun.arch.data.model"],
		JREVENDOR 	= allProp["java.vendor"],
		JRENAME 		= allProp["java.runtime.name"],
		JREVERSION 	= allProp["java.runtime.version"]  };
		
	return stResult;
	}	
	


}	

