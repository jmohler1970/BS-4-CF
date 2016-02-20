component	accessors="true"	{

	property	beanFactory;
	property	framework;


void function time() output="false"	{
	
	rc.renderData = "#LSDateFormat(now())# @ #LSTimeFormat(Now(), 'h:mm:ss')#";
	}


void function after() output="false"	{
	
	
	// view will not be shown
	if (rc.keyExists("contentType") && rc.contentType == "json")	{
	
		framework.renderData(rc.contentType, { "html" = rc.renderData} );
		}


	if (rc.keyExists("contentType") && rc.contentType == "text")	{
	
		framework.renderData(rc.contentType, rc.renderData );
		}


	cfsetting(showdebugoutput = false);
	
	}
	
	
} // end controller
	