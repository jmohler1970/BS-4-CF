


component extends="framework.one"	{
	
this.name="bs-4-cf-55";
this.applicationManagement = true;
this.sessionManagement = true;


variables.framework	=	{
	home	= "main.home",
	baseURL = 'useCGIScriptName',
	defaultItem = "home",
	generateSES = true,
	SESomitIndex = false
	};
	
variables.framework.routes	= [
	{ "_bootstrap"	= "302:/main/home"		},
	{ "common"	= "docs/common"		},
	{ "theme/:id"	= "main/theme/theme/:id"	},
	{ "theme"		= "main/theme"			}
	];	


function setupApplication()	{
	
	application.initialized = now();
	
	application.Bootstrap = {
				
		// Antisamy options
		isSafeHTML		= ["buttongroup","buttontoolbar","column","container","dropmenu","fieldset","formgroup","head",
							"jumbotron","modal","navbar","navbarlinks","navlink","panel","row","table","tabview","tr","well"],	// these tags to not run through getSafeHTML		
		profile			= "",	// blank means use system default
		throwOnError		= false,	// Default behavior for getSafeHTML()
		
	
		actionRoot 		= cgi.script_name,
		validLook			= ["", "link", "default", "primary", "success", "info", "warning", "danger"], // There does not guarantee they are valid	
		
		iconLibrary		= {"default" = "glyphicon glyphicon-", "awesome" = "fa fa-", "jquery-ui" = "ui-icon ui-icon-"}, 		// be sure to include ending dashes
		imageLibrary		= {"default" = replace(cgi.script_name, "/index.cfm", "") & "/assets/"},							// used by b:graphicImage
		styleSheetLibrary	= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"},				// used by b:outputStyleSheet
		scriptLibrary		= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js", local="assets/"}	// used by b:outputScript
		};
	
		
		
	} // end setupApplication
	
	
function setupSession()	{
	
	session.themeX = "default";
	}	


	
function after()	{
		

	if(rc.keyExists("theme") and rc.theme != "assets")	{
		
		session.themeX = rc.theme;
		}
		
	
	}

}

