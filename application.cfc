


component extends="framework.one" accessors="true"	{
	

this.name="bs-4-cf-08";
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
		
		// Cacheing
		region			= "Bootstrap", // Only Bootstrap should use this
		
		// i18n options
		langRoot			= expandPath("lang") & "/",
		arLang			= [],
	
		actionRoot 		= cgi.script_name,
		validLook			= ["", "link", "default", "primary", "success", "info", "warning", "danger"], // There does not guarantee they are valid	
		
		iconLibrary		= {"default" = "glyphicon glyphicon-", "awesome" = "fa fa-", "jquery-ui" = "ui-icon ui-icon-"}, 		// be sure to include ending dashes
		imageLibrary		= {"default" = replace(cgi.script_name, "/index.cfm", "") & "/assets/"},							// used by b:graphicImage
		styleSheetLibrary	= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"},				// used by b:outputStyleSheet
		scriptLibrary		= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js", local="assets/"}	// used by b:outputScript
		};
	
	
	
	for(local.langFile in DirectoryList(application.Bootstrap.langRoot, false, "path", "*.php"))	{
		application.Bootstrap.arLang.append(local.langFile.listLast("/").listFirst("."));
		}
		
	
		
	// load i18n
	local.languageService = new model.services.language();
		

	
	
	application.Bootstrap.i18n = {};
	application.Bootstrap.i18n.append( local.languageService.readPHP(		expandPath("lang") 	& "/") );				// traditional language file
	// simple append won't work
	local.stTitle = local.languageService.readProperties(	expandPath(".") 	& "/title.properties" );
	
	for (local.languageKey in local.stTitle)	{
		application.Bootstrap.i18n[local.languageKey].append( local.stTitle[local.languageKey] );	// titles are here
		}
		

		
		
	application.geti18n = function(required string key, any placeholder = []) output="false"	{
	
		if (!isArray(arguments.placeholder)) arguments.placeholder = [arguments.placeholder];
		
		
		if (application.Bootstrap.i18n.keyExists(session.lang) && application.Bootstrap.i18n[session.lang].keyExists(arguments.key))	{
			
			var myString = application.Bootstrap.i18n[session.lang][arguments.key];
			
			
			for (var i in arguments.placeholder)	{
			
				myString = myString.replace('%s', i); // only does first match
				}
		
			return getSafeHTML(myString);
			}
			
		
		return "{#arguments.key#}";
		}; // end function
	 		
		
		
		
		
	} // end setupApplication
	
	
function setupSession()	{
	
	session.themeX = "default";
	session.lang	= "en_US";
	}	


	
function after()	{
		
	if(rc.keyExists("lang"))	{
		session.lang = rc.lang;
		}
		

	if(rc.keyExists("theme") and rc.theme != "assets")	{
		
		session.themeX = rc.theme;
		}
		
	
	}

}

