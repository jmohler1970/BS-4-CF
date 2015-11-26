


component extends="framework.one" accessors="true"	{
	

this.name="bs-4-cf-270";
this.applicationManagement = true;
this.sessionManagement = true;


variables.framework	=	{
	home	= "docs.home",		// For PlumaCMS, change this to wiki.home or main.home aka login
	baseURL = 'useCGIScriptName',
	defaultItem = "home",
	generateSES = true,
	SESomitIndex = false
	};
	
variables.framework.routes	= [
	{ "backups/delete/:id"	= "backups/delete/slug/:id"},
	{ "backups/edit/:id"	= "backups/edit/slug/:id"},
	{ "backups/restore/:id"	= "backups/restore/slug/:id"},
	{ "edit/:id"			= "pages/edit/slug/:id"	},
	{ "theme"				= "theme/home"			},
	{ "components"			= "theme/components"	},
	{ "edit"				= "pages/edit"			},
	{ "filedelete"			= "pages/delete"		},
	{ "pages/home"			= "pages/home"			},
	{ "_bootstrap"			= "302:/main/home"		},
	{ "common"			= "docs/common"		},
	{ "bootswatch/:id"		= "bootswatch/home/bootswatch/:id"	},
	{ "wiki/:id"			= "wiki/home/slug/:id"	}
	];
	





function setupApplication()	{
	
	application.initialized = now();
	
	local.objAppFile = fileopen(expandpath('./Application.cfc'), 'read');
	
	application.GSVERSION = "Version 3.3.5.#right(year(local.objAppFile.lastmodified), 2)#.#month(local.objAppFile.lastmodified)#.#day(local.objAppFile.lastmodified)#";
fileclose(objAppFile);


	// Common variables and paths
 	application.GSAUTHOR			= "James Mohler and Web World Inc";
 	application.GSSITE_FULL_NAME		= "PlumaCMS";
 	application.GSSITE_LINK_BACK_URL	= "https://github.com/jmohler1970";
	
 	application.GSROOTPATH 			= getdirectoryfrompath(getBaseTemplatePath());
 	application.GSBACKUPSPATH		= application.GSROOTPATH & "backups/";
 	application.GSDATAPATH			= application.GSROOTPATH & "data/";
 	application.GSDATAOTHERPATH		= application.GSROOTPATH & "data/other/";
 	application.GSTHUMBNAILPATH		= application.GSROOTPATH & "data/thumbs/";
 	application.GSDATAPAGESPATH		= application.GSROOTPATH & "data/pages/";
 	application.GSDATAUPLOADPATH		= application.GSROOTPATH & "data/uploads/";
 	application.GSUSERSPATH 			= application.GSROOTPATH & "data/users/";
 	// End Pluma
 	
	
	// Support for complicated variables. This used to have to be in FW/1
	application.objFormUtilities = new framework.formUtilities();

	
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
		langRoot			= expandPath("vendor/lang") & "/",
		arLang			= [],
	
		actionRoot 		= "http://" & cgi.server_name & (cgi.server_port == 80 ? "" : ":" & cgi.server_port)  & cgi.script_name & "/",
		validLook			= ["", "link", "default", "primary", "success", "info", "warning", "danger"], // There does not guarantee they are valid	
		
		iconLibrary		= {"default" = "glyphicon glyphicon-", "awesome" = "fa fa-", "jquery-ui" = "ui-icon ui-icon-"}, 		// be sure to include ending dashes
		imageLibrary		= {"default" = replace(cgi.script_name, "/index.cfm", "") & "/assets/"},							// used by b:graphicImage
		
		// used by b:outputStyleSheet
		styleSheetLibrary	= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css",
							 local  		= replace(cgi.script_name, "/index.cfm", "") & "/assets/",
							 innovation  	= replace(cgi.script_name, "/index.cfm", "") & "/layouts/innovation/",
							 vendor 		= replace(cgi.script_name, "/index.cfm", "") & "/vendor/"
							 },
							 
		// used by b:outputScript
		scriptLibrary		= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js",
							 local  = replace(cgi.script_name, "/index.cfm", "") & "/assets/",
							 vendor = replace(cgi.script_name, "/index.cfm", "") & "/vendor/"
							 }
		};
	
	
	application.GSConfig	= new model.services.settings().getWebsite();

		
		
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
	
	session.GSUser	= new model.services.settings().getUser();
	
	session.bootswatch = "default";
	session.lang	= session.GSUser.lang;
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
		local.i18n.append( local.languageService.readPHP(application.Bootstrap.langroot) );				// traditional language file
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
	
	
	
	if ( isDefined('form') ) rc.Append(application.objFormUtilities.buildFormCollections(form));
		
		
	if(rc.keyExists("lang"))	{
		session.lang = rc.lang;
		}
		

	if(rc.keyExists("bootswatch") and rc.bootswatch != "assets")	{
		
		session.bootswatch = rc.bootswatch;
		}
		
	
	}

}

