


component	{
	
this.name="bs-4-cf-3";	
this.sessionManagement = true;	
	
function onRequestStart()	{
	
	param session.theme = "default";
	

	if(structkeyExists(url, "theme"))	{
		
		session.theme = url.theme;
		}



	}	// onRequestStart
}

