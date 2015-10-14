


component extends="framework.one" accessors="true"	{
	

this.name="bs-4-cf-45";
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
		isSafeHTML		= [	"cf_buttongroup",	"cf_buttontoolbar",	"cf_column",	"cf_container",	"cf_dropmenu",
							"cf_fieldset",		"cf_formgroup",	"cf_head",
							"cf_jumbotron",	"cf_modal",		"cf_navbar",	"cf_navbarlinks",	"cf_navlink",
							"cf_panel",		"cf_row",			"cf_table",	"cf_tabview",		"cf_tr","cf_well"],	// these tags to not run through getSafeHTML		
		profile			= "",	// blank means use system default
		throwOnError		= false,	// Default behavior for getSafeHTML()
		
		// Cacheing
		cache			= {content = "Bootstrap", language = "i18n" }, // Only Bootstrap should use this
				
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
	
	


		
		
	application.geti18n = function(required string key, any placeholder = []) output="false"	{
	
		if (!isArray(arguments.placeholder)) arguments.placeholder = [arguments.placeholder];
		
		
		if (CacheIdExists(session.lang, application.Bootstrap.cache.language))	{
			
			local.stLang = cacheGet(session.lang, application.Bootstrap.cache.language);
	
			
			
			if (local.stLang.keyExists(arguments.key))	{
			
				local.myString = local.stLang[arguments.key]; 
			
				for (var i in arguments.placeholder)	{
			
					local.myString = local.myString.replace('%s', i); // only does first match
					}
					
				return getSafeHTML(local.myString);
				} // end keyExists
			} // end cacheIdExists
			
		
		return "{#arguments.key#}";
		}; // end function
	 		
		
		
		
		
	} // end setupApplication
	
	
function setupSession()	{
	
	session.themeX = "default";
	session.lang	= "en_US";
	}	



function setupRequest()	{
	
	
	if(application.Bootstrap.arLang.isEmpty())	{
		for(local.langFile in DirectoryList(application.Bootstrap.langRoot, false, "path", "*.php"))	{
			application.Bootstrap.arLang.append(local.langFile.listLast("/").listFirst("."));
			}
		}	
	
	
	
	if(!cacheRegionExists(application.Bootstrap.cache.content))  CacheRegionNew(application.Bootstrap.cache.content);
	if(!cacheRegionExists(application.Bootstrap.cache.language)) CacheRegionNew(application.Bootstrap.cache.language);
	
	
	if(cacheGetAllIds(application.Bootstrap.cache.language).isEmpty())	{	
				
		
			
		// load i18n
		local.languageService = new model.services.language();
			
	
		
		
		local.i18n = {};
		local.i18n.append( local.languageService.readPHP(		expandPath("lang") 	& "/") );				// traditional language file
		// simple append won't work
		local.stTitle = local.languageService.readProperties(	expandPath(".") 	& "/title.properties" );
		
		for (local.languageKey in local.stTitle)	{
			
			local.i18n[local.languageKey].append( local.stTitle[local.languageKey] );	// titles are here
			}
		
		for (local.languageKey in local.i18n)	{
			CachePut(local.languageKey, local.i18n[local.languageKey], 1, 1, application.Bootstrap.cache.language);
			}
		
		}

	} // end setupRequest

	
function after()	{
		
	if(rc.keyExists("lang"))	{
		session.lang = rc.lang;
		}
		

	if(rc.keyExists("theme") and rc.theme != "assets")	{
		
		session.themeX = rc.theme;
		}
		
	
	}

}

