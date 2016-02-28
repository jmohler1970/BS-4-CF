// these functions need to be injected


component output="false" {
	
	
	
void function setupApplication()	{
	
	
	application.Bootstrap = {
				
		// Antisamy options
		isSafeHTML		= [	"cf_buttongroup",	"cf_buttontoolbar",	"cf_column",	"cf_container",	"cf_dropmenu",
							"cf_fieldset",		"cf_formgroup",	"cf_head",	"cf_include",
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
		styleSheetLibrary	= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css",
							 local  		= replace(cgi.script_name, "/index.cfm", "") & "/assets/",
							 innovation  	= replace(cgi.script_name, "/index.cfm", "") & "/layouts/innovation/",
							 vendor 		= replace(cgi.script_name, "/index.cfm", "") & "/vendor/"
							 },
							 
		// used by b:outputScript
		scriptLibrary		= {"default" = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js",
							 local  = replace(cgi.script_name, "/index.cfm", "") & "/assets/",
							 vendor = replace(cgi.script_name, "/index.cfm", "") & "/vendor/"
							 }
		};
	
	
	
	
	application.geti18n = function(required string key, any placeholder = []) output="false"	{
	
		if (!isArray(arguments.placeholder)) arguments.placeholder = [arguments.placeholder];
		
		
		if (CacheIdExists(application.lang, application.Bootstrap.cache.language))	{
			
			local.stLang = cacheGet(application.lang, application.Bootstrap.cache.language);
	
			
			
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
	 		
		
	// Language control
	application.lang = "en_US"; // needs to be smarter		
		
	
	}
	
	
void function setupRequest()	{
		
	
	if(application.Bootstrap.arLang.isEmpty())	{
		for(local.langFile in DirectoryList(application.Bootstrap.langRoot, false, "path", "*.php"))	{
			application.Bootstrap.arLang.append(local.langFile.listLast("/").listFirst("."));
			}
		}	
	
	
	
	if(!cacheRegionExists(application.Bootstrap.cache.content))  CacheRegionNew(application.Bootstrap.cache.content);
	if(!cacheRegionExists(application.Bootstrap.cache.language)) CacheRegionNew(application.Bootstrap.cache.language);
	
	
	if(cacheGetAllIds(application.Bootstrap.cache.language).isEmpty())	{	
				
		

		
		
		local.i18n = {};
		local.i18n.append( this.readPHP(application.Bootstrap.langroot) );				// traditional language file
		// simple append won't work
		local.stTitle = this.readProperties(	expandPath(".") 	& "/title.properties" );
		
		for (local.languageKey in local.stTitle)	{
			
			local.i18n[local.languageKey].append( local.stTitle[local.languageKey] );	// titles are here
			}
		
		for (local.languageKey in local.i18n)	{
			CachePut(local.languageKey, local.i18n[local.languageKey], 1, 1, application.Bootstrap.cache.language);
			}
		
		}

		
}




struct function readProperties(required string propertyfile)		{
		
	local.stResult = {};
	
	local.stSection = getProfileSections(arguments.propertyfile.replace("\", "/", "all"));
  
     
	for(local.section in local.stSection)	{
      
      	local.CurrentSection = local.stSection[local.section].listToArray();	
               
	 	local.stData = {};
	  	
	  	for(local.key in CurrentSection)	{
	  
	       	local.stData[local.key] = getProfileString(arguments.propertyfile, local.section, local.key);
	       	}
      
     	local.stResult[local.section] = local.stData;
     	}
     	
   
    return stResult;
    }



struct function readPHP(required string phpPath)	{


	local.stProperties = {};
	
    
	local.arDirectory = DirectoryList(arguments.phpPath, false, "path", "*.php");
    
	    
	for (local.phpFile in local.arDirectory)	{
		
		local.phpFile = local.phpFile.replace("\", "/", "all");
		
		local.languageKey = local.phpFile.listLast("/").listFirst(".");

		local.stProperties[languageKey] = {};
   
		local.stProperties[languageKey]._reading = local.phpFile;
    
    
		local.phpText = fileRead(local.phpFile).trim();
    

		// remove comments and blank lines
		local.phpText = phpText.ReReplace("(?m)\##.*?$", "", "all");
		local.phpText = phpText.ReReplace("[#Chr(10)#]{2,}", chr(10), "all");
		local.phpText = phpText.ReplaceList('",', '"');
 	
		// loop over each line, ignore comments (#...) and insert keys/values into return struct 
		for(local.line in phpText.ListToArray(chr(10)))	{
			
			var splitAt 	= local.line.find("=>");
			var commentAt  = local.line.find("//"); 			
		
            
			if (local.splitAt != 0)	{
                       
               	var key = local.line.left(local.splitAt - 1).trim().replacelist('"', "");
                    key = key.replace(',', '', 'all');   
				key = key.replace("'", "", 'all').trim();	
			
				value = local.line.find("//") ?
						local.line.mid(splitAt + 2, CommentAt - (splitAt + 2)	).trim().replacelist('"', '')
						:	
						local.line.mid(splitAt + 2, 1000					).trim().replacelist('"', '')
						;
				
				
	
			
				//  Remove trailing , 
				if (value.right(1) == ",")
					value = value.mid(1, value.len() - 1);
			
            
				if (value.right(1) == "'")
					value = value.mid(1, value.len() - 1);
			

				if (value.left(1) == "'")
					value = value.mid(2, 1000);
			

				stProperties[languageKey][key] = value;
            	
            		} // valid split at
            	
          	} // end line
          	
          } // end file
          
          
          	
      
    return stProperties;

    } // end funciton

	
	
} // end component
