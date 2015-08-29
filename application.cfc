


component	{
	
this.name="bs-4-cf-10";
this.applicationManagement = true;
this.sessionManagement = true;


function onApplicationStart()	{
	application.stBootstrap = {
	
		actionRoot 		= cgi.script_name,
		ImageLibrary		= {},	
		StyleSheetLibrary	= {},	
		ScriptLibrary	= {}	
		};
		
	application.Bootstrap.ImageLibrary["default"]		= replace(cgi.script_name, "/index.cfm", "") & "/assets/";		// used by b:graphicImage
	application.Bootstrap.StyleSheetLibrary["default"] 	= replace(cgi.script_name, "/index.cfm", "") & "/assets/";		// used by b:outputStyleSheet
	application.Bootstrap.ScriptLibrary["default"]		= replace(cgi.script_name, "/index.cfm", "") & "/assets/";		// used by b:outputScript
			
		
	} // end onApplicationStart

	
function onRequestStart()	{
	
	param session.theme = "default";
	

	if(structkeyExists(url, "theme"))	{
		
		session.theme = url.theme;
		}
	}	// end onRequestStart

}

