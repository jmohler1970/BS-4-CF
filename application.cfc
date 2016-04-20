


component extends="framework.one" accessors="true"	{


this.name="bs-4-cf-352";
this.applicationManagement = true;
this.sessionManagement = true;



variables.framework	=	{
	home	= "docs.home",		// For PlumaCMS, change this to wiki.home or main.home aka login OR wiki.home
	baseURL = 'useCGIScriptName',
	defaultItem = "home",
	generateSES = true,
	SESomitIndex = false
	};
	
variables.framework.routes	= [
	// PlumaCMS
	{ "backups/delete/:id"	= "backups/delete/slug/:id"},
	{ "backups/edit/:id"	= "backups/edit/slug/:id"},
	{ "backups/restore/:id"	= "backups/restore/slug/:id"},
	{ "components"			= "theme/components"	},
	{ "edit/:id"			= "pages/edit/slug/:id"	},
	{ "edit"				= "pages/edit"			},
	{ "filedelete"			= "pages/delete"		},
	{ "logout"			= "login/logout"		},
	{ "pages/home"			= "pages/home"			},
	{ "wiki/:id"			= "wiki/home/slug/:id"	},
	
	// documentation
	{ "common"			= "docs/common"		},
	{ "theme"				= "theme/home"			},
	{ "bootswatch/:id"		= "bootswatch/home/bootswatch/:id"	}
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
	application.objFormUtilities	= new framework.formUtilities();
	application.GSConfig		= new model.services.settings().getWebsite();

	invoke("vendor.tags.bootstrap.bootstrap", "setupApplication");
	} // end setupApplication
	
	
function setupSession()	{
	
	session.authenticated = false;
	
	session.bootswatch = "default";
	}	



function setupRequest()	{
	
	invoke("vendor.tags.bootstrap.bootstrap", "setupRequest");
	} // end setupRequest

	
function after()	{
	
	
	
	if ( isDefined('form') ) rc.Append(application.objFormUtilities.buildFormCollections(form));
		
		
	if(rc.keyExists("lang"))	{
		application.lang = rc.lang;
		}
		

	if(rc.keyExists("bootswatch") and rc.bootswatch != "assets")	{
		
		session.bootswatch = rc.bootswatch;
		}
		
	
	}

}

