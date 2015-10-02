


component	{
	
this.name="bs-4-cf-27";
this.applicationManagement = true;
this.sessionManagement = true;


function onApplicationStart()	{
	application.Bootstrap = {
				
		// Antisamy options
		isSafeHTML		= ["buttonGroup","buttonToolbar","column","container","fieldset","formgroup",
							"jumbotron","modal","panel","row","table","tabview","tr","well"],	// these tags to not run through getSafeHTML		
		profile			= "",	// blank means use system default
		throwOnError		= false,	// Default behavior for getSafeHTML()
		
	
		actionRoot 		= cgi.script_name,
		validLook			= ["", "link", "default", "primary", "success", "info", "warning", "danger"], // There does not guarantee they are valid	
		
		iconLibrary		= {"default" = "glyphicon glyphicon-", "awesome" = "fa fa-", "jquery-ui" = "ui-icon un-icon-"},
		imageLibrary		= {"default" = replace(cgi.script_name, "/index.cfm", "") & "/assets/"},	
		styleSheetLibrary	= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"},
		scriptLibrary		= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js", local="assets/"}	
		};
	
		
		
	} // end onApplicationStart

	
function onRequestStart()	{
	
	param session.theme = "default";
	

	if(structkeyExists(url, "theme"))	{
		
		session.theme = url.theme;
		}
	}	// end onRequestStart

}

