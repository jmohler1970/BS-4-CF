


component	{
	
this.name="bs-4-cf-17";
this.applicationManagement = true;
this.sessionManagement = true;


function onApplicationStart()	{
	application.Bootstrap = {
	
		actionRoot 		= cgi.script_name,
		IconLibrary		= {"default" = "glyphicon glyphicon-", "awesome" = "fa fa-"},
		ImageLibrary		= {"default" = replace(cgi.script_name, "/index.cfm", "") & "/assets/"},	
		StyleSheetLibrary	= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"},	
		ScriptLibrary		= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"}	
		};
	
		
	} // end onApplicationStart

	
function onRequestStart()	{
	
	param session.theme = "default";
	

	if(structkeyExists(url, "theme"))	{
		
		session.theme = url.theme;
		}
	}	// end onRequestStart

}

