component	{


query function findAll(string mode = "default")	output="false"	{


	local.qryResult = QueryNew("Title,Slug,DateLastModified,isHome,Menu,MenuOrder,MenuStatus,Parent,Private");

	for(local.row in directoryList(application.GSDATAPAGESPATH, false, "query", "*.xml"))	{

		local.Page = this.get(local.row.name.listfirst("."));

		local.qryResult.addRow({
			Title = local.Page.Title,
			Slug =  local.row.name.listfirst("."),
			DateLastModified = local.row.DateLastModified, 
			isHome = (local.row.name == "index.xml" ? 1 : 0),
			Menu	= local.Page.Menu,
			MenuOrder = local.Page.MenuOrder,
			MenuStatus = local.Page.MenuStatus,
			Parent = local.Page.Parent,
			Private = local.Page.private
			});
		} // end for


	if(arguments.mode == "menu")	{

		return queryExecute("
			SELECT Title, Slug, Menu, MenuOrder, Parent
			FROM [local].qryResult
			WHERE MenuStatus = 'Y'
			ORDER BY MenuOrder
			",
			[],
			{dbtype = "query"}
			);

		}	

	return local.qryResult;
	}


query function findBackups() output="false"	{
	
	local.path = application.GSBACKUPSPATH & 'Pages/';
	
	local.qryResult = QueryNew("Title,Slug,DateLastModified,isHome,Menu,MenuOrder,MenuStatus,Private");

	for(local.row in directoryList(local.path, false, "query", "*.xml"))	{

		local.Page = this.get(local.row.name.listfirst("."), local.path);

		local.qryResult.addRow({
			Title = local.Page.Title,
			Slug =  local.row.name.listfirst("."),
			DateLastModified = local.row.DateLastModified, 
			isHome = (local.row.name == "index.xml" ? 1 : 0),
			Menu	= local.Page.Menu,
			MenuOrder = local.Page.MenuOrder,
			MenuStatus = local.Page.MenuStatus,
			Private = local.Page.private
			});
		} // end for


	return local.qryResult;
	}





struct function get(required string slug, string path = application.GSDATAPAGESPATH) output="false"	{

	if (arguments.slug == "")	{
		return {	pubDate 	= '',
				title 	= '',
				url		= '',
				meta 	= '',
				metad 	= '',
				menu		= '',
				menuOrder	= '',
				menuStatus= '',
				template	= '',
				parent	= '',
				content 	= '',
				private 	= '',
				author	= ''
				};
		}


	local.xmlPage = xmlParse(FileRead(arguments.path & arguments.slug & (path CONTAINS "backups" ? '.bak' : '') & ".xml"));

	return	{
		slug		= arguments.slug, // we return this so that set() can work with this data
		
		pubDate 	= local.xmlPage.item.pubDate.xmlText,
		title 	= local.xmlPage.item.title.xmlText,
		url		= local.xmlPage.item.xmlChildren[3].xmlText, // CF does not like url as a tag name
		meta 	= local.xmlPage.item.meta.xmlText,
		metad 	= local.xmlPage.item.metad.xmlText,
		menu 	= local.xmlPage.item.menu.xmlText,
		menuOrder = local.xmlPage.item.menuOrder.xmlText,
		menuStatus= local.xmlPage.item.menuStatus.xmlText,
		template	= local.xmlPage.item.template.xmlText,
		parent	= local.xmlPage.item.parent.xmlText,
		content 	= local.xmlPage.item.content.xmlText,
		private 	= local.xmlPage.item.private.xmlText,
		author	= StructkeyExists(local.xmlPage.item, "author") ? local.xmlPage.item.author.xmlText : "" // per getSimple, it may not be there
		};
	}


query function getTemplate() output="false" hint="FW/1 layouts"	{
	
	local.qryData = QueryNew("Display,Value");
	
	
	for(local.row in directoryList(application.GSROOTPATH & "layouts/", false, "query", "*.cfm"))	{
		local.qryData.addRow({ display = local.row.name.listfirst("."), value = local.row.name.listfirst(".") });
		}

	return local.qryData;
	}


// End read only functions


// Start GS inspired functions
string function get_page_clean_title(required string slug) output="false" {
	
	return this.sluggify(this.get(arguments.slug).title);
	}


string function find_url(required string slug, string parent) output="false"	{
	
	if (arguments.slug == "index") return "";
	
	return "/wiki/" & encodeForURL(arguments.slug);
	}
	

string function get_parent_link(required string slug) output="false"	{
	
	local.page = this.get(arguments.slug);
	
	if (local.page.parent == "") return "";
	
	if (local.page.parent == "index") return "";
	
	return "/wiki/" & encodeForURL(local.page.parent);
	}
	

string function get_navigation(required string slug, string classPrefix = "", string site_url = "/") output="false"	{
	
	local.menu = "";
	
	for(local.row in this.findAll("menu"))	{

		local.class = arguments.classPrefix;
		if(arguments.slug == local.row.slug) local.class &= " current active";
		
		local.menu &= '<li class="' & local.class & '"><a href="' 
			& arguments.site_url & this.find_url(local.row.slug, local.row.parent) & '" title="' 
			& encodeForHTMLAttribute(local.row.title) & '">'
			& local.row.menu & '</a></li>';
		} // end for

	return local.menu;
	}	


// End GS functions


boolean function set(required struct rc) output="false"	{

	if(!arguments.rc.keyexists("url") || arguments.rc.url == "")	{
		arguments.rc.url = this.sluggify(arguments.rc.title ?: "");
		};






	local.xmlPage = '<?xml version="1.0"?>';

	local.xmlPage &= "<item>";
	local.xmlPage &= "<pubDate>#LSDateFormat(now())# #LSTimeFormat(now())#</pubDate>";
	local.xmlPage &= "<title>#EncodeForXML(rc.title)#</title>";
	local.xmlPage &= "<url>#EncodeForXML(rc.url)#</url>";
	local.xmlPage &= "<meta>#EncodeForXML(rc.meta)#</meta>";
	local.xmlPage &= "<metad>#EncodeForXML(rc.metad)#</metad>";
	local.xmlPage &= "<menu>#EncodeForXML(rc.menu ?: '')#</menu>";
	local.xmlPage &= "<menuOrder>#EncodeForXML(rc.menuOrder ?: '')#</menuOrder>";
	local.xmlPage &= "<menuStatus>#EncodeForXML(rc.menuStatus ?: '')#</menuStatus>";
	local.xmlPage &= "<template>#EncodeForXML(rc.template)#</template>";
	local.xmlPage &= "<parent>#EncodeForXML(rc.parent)#</parent>";
	local.xmlPage &= "<content>#EncodeForXML(rc.content)#</content>";
	local.xmlPage &= "<private>#EncodeForXML(rc.private)#</private>";
	local.xmlPage &= "<author>#EncodeForXML(rc.author)#</author>";
	local.xmlPage &= "";

	local.xmlPage &= "</item>";

	//if(arguments.rc.url == "" && arguments.rc.title !="") throw (message="could not generate slug", detail = "#this.sluggify(arguments.rc.title)# from #arguments.rc.title#");		
	if(arguments.rc.url == "")	return false;


	local.existing = application.GSDATAPAGESPATH & arguments.rc.url & ".xml";	
	local.bakfile = application.GSBACKUPSPATH & "pages/" & arguments.rc.url & ".bak.xml";


	// move if slug was renamed
	if(arguments.rc.slug != arguments.rc.url && !FileExists(local.existing))	{
		FileMove(application.GSDATAPAGESPATH & arguments.rc.slug & ".xml", local.existing);
		}
	

	// backup management	
	if(FileExists(local.bakfile))	{
		FileDelete(local.bakfile);
		}
	FileCopy(local.existing, local.bakfile);	


	FileWrite(local.existing, local.xmlPage);


	return true;
	}



string function sluggify(required string str) output="false"	{


	var spacer	= "-";
	var ret		= "";

	str = str.trim().lcase();
	str = reReplace(str, "[^a-z0-9-]", spacer, "all");
	ret = reReplace(str, "#spacer#+", spacer, "all");

	if (left(ret, 1) == spacer)
		ret = right(ret, len(ret)-1);

	if (right(ret, 1) == spacer)
		ret = left(ret, len(ret)-1);


	return ret;
	}



boolean function saveMenu(required string lstMenu)	{
	
	local.priority = 1;
	for (local.slug in arguments.lstMenu.ListToArray())	{
		
		local.page = this.get(local.slug);
		
		if (local.page.menuOrder != local.priority)	{
			local.page.MenuOrder 	= local.priority;
			this.set(local.page);
			}
		local.priority++;	
		}
	
	return true;
	}



boolean function clone(required string slug) output="false"	{

	FileCopy(application.GSDATAPAGESPATH & arguments.slug & ".xml", application.GSDATAPAGESPATH & arguments.slug & "-1.xml");

	return true;
	}



boolean function delete(required string slug) output="false"	{

	if(!FileExists(application.GSDATAPAGESPATH & arguments.slug & ".xml"))	return false;
	
	
	FileDelete(application.GSDATAPAGESPATH & arguments.slug & ".xml");
	return true;
	}


boolean function restoreBackup(required string slug) output="false"	{
	
	local.existing = application.GSDATAPAGESPATH & arguments.slug & ".xml";	
	local.bakfile = application.GSBACKUPSPATH & "pages/" & arguments.slug & ".bak.xml";

	if(!FileExists(local.bakfile))	{return false;} // backup does not exist
		
	if(FileExists(local.existing))		{FileDelete(local.existing);}
	
	FileMove(local.bakfile, local.existing);
	
	return true;
	}

	
	
boolean function deleteBackup(required string slug) output="false"	{
	
	local.bakfile = application.GSBACKUPSPATH & "pages/" & arguments.slug & ".bak.xml";

	if(!FileExists(local.bakfile))	return false;
		
	FileDelete(local.bakfile);
	return true;
	}
	
void function deleteAllBackups() output="false"	{
	
	for(local.row in directoryList(application.GSDATAPAGESPATH, false, "array", "*.xml"))	{
		FileDelete(local.row);
		}
	
	}	
	

}	