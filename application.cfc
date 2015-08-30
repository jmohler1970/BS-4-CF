


component	{
	
this.name="bs-4-cf-12";
this.applicationManagement = true;
this.sessionManagement = true;


function onApplicationStart()	{
	application.Bootstrap = {
	
		actionRoot 		= cgi.script_name,
		IconLibrary		= {},
		ImageLibrary		= {},	
		StyleSheetLibrary	= {},	
		ScriptLibrary	= {}	
		};
	
	application.Bootstrap.IconLibrary["default"]			= "glyphicon glyphicon-";		// be sure to include ending dash
	application.Bootstrap.IconLibrary["awesome"]			= "fa fa-";
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

