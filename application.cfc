


component	{
	
this.name="bs-4-cf-5";
this.applicationManagement = true;
this.sessionManagement = true;


function onApplicationStart()	{
application.stBootstrap = {
	
	actionRoot 	= cgi.script_name,
	stImageLibrary	= {
			assets = "/assets"
			}		
		};
	
	}
	
function onRequestStart()	{
	
	param session.theme = "default";
	

	if(structkeyExists(url, "theme"))	{
		
		session.theme = url.theme;
		}



	}	// onRequestStart
}

