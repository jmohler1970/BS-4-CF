component	{
	
variables.Components= application.GSDATAOTHERPATH & "components.xml";
variables.Website 	= application.GSDATAOTHERPATH & "website.xml";

	
	

string function get_theme_url() output="false"	{
	
	return cgi.script_name.replace("/index.cfm", "") & "/layouts/" & this.getWebsite().template.lcase();
	}	
	
	
struct function getComponents() output="false"	{
	
	local.stResult = {};

	
	local.xmlComponents = xmlParse(FileRead(variables.Components));
	
	
	local.StrEscUtils = createObject("java", "org.apache.commons.lang.StringEscapeUtils");


	
	for(local.item in local.xmlComponents.channel.xmlChildren)	{
		local.stResult[local.item.slug.xmlText] = StrEscUtils.unescapeHTML(local.item.value.xmlText);
		}
	
	return	local.stResult;
	
	}	
	
	
struct function getWebsite() output="false"	{
	
	
	local.xmlOther = xmlParse(FileRead(variables.Website));
	
	return	{
		sitename 	= local.xmlOther.item.sitename.xmlText,
		siteurl 	= local.xmlOther.item.siteurl.xmlText,
		template 	= local.xmlOther.item.template.xmlText,
		prettyurls= local.xmlOther.item.prettyurls.xmlText,
		permalink = local.xmlOther.item.permalink.xmlText
		};	
	}	
	
	
	
	
void function setWebsite(required struct rc)	{
	
	local.xmlOther = '<?xml version="1.0"?>';
	
	local.xmlOther	&= "<item>";
	local.xmlOther &= "<SITENAME>#encodeForXML(rc.sitename)#</SITENAME>";
	local.xmlOther &= "<SITEURL>#encodeForXML(rc.siteurl)#</SITEURL>";
	local.xmlOther &= "<TEMPLATE>#encodeForXML(rc.template)#</TEMPLATE>";
	local.xmlOther &= "<PRETTYURLS>#encodeForXML(rc.prettyurls ?: 0)#</PRETTYURLS>";
	local.xmlOther &= "<PERMALINK>#encodeForXML(rc.permalink ?: '')#</PERMALINK>";
	local.xmlOther	&= "</item>";
		
		
	FileWrite(variables.Website, local.xmlOther);
	}
	


	
	
struct function getUser(string usr = "admin") output="false"	{
	
		
	local.xmlUser = xmlParse(FileRead(application.GSUSERSPATH & arguments.usr & ".xml"));
	
	return	{
		usr	 	= local.xmlUser.item.usr.xmlText,
		name 	= local.xmlUser.item.name.xmlText,
		pwd	 	= local.xmlUser.item.pwd.xmlText,
		email	= local.xmlUser.item.email.xmlText,
		htmleditor	= local.xmlUser.item.htmleditor.xmlText,
		timezone	= local.xmlUser.item.timezone.xmlText,
		lang		= local.xmlUser.item.lang.xmlText
		
		};	
	}	
	
	
boolean function doLogin(usr, pwd) output="false"	{
	
	local.stUser = this.getUser(arguments.usr);
	
	return (arguments.usr == local.stUser.usr && hash(arguments.pwd) ==	local.stUser.pwd || local.stUser.pwd == "")	? true : false;
	}
	
	
	
void function setUser(required struct rc)	{
	
	local.oldValue = this.getUser(rc.usr);
	
	if (rc.sitepwd != "" && rc.sitepwd == rc.sitepwd_confirm)	{
		local.pwd = hash(rc.sitepwd);
		}
	else	{
		local.pwd = local.oldValue.pwd;	
		}
		
	local.xmlOther = '<?xml version="1.0"?>';
	
	local.xmlOther	&= "<item>";
	local.xmlOther &= "<USR>#encodeForXML(rc.usr)#</USR>";
	local.xmlOther &= "<NAME>#encodeForXML(rc.name)#</NAME>";
	local.xmlOther &= "<PWD>#encodeForXML(local.pwd)#</PWD>";
	local.xmlOther &= "<EMAIL>#encodeForXML(rc.email)#</EMAIL>";
	local.xmlOther &= "<HTMLEDITOR>#encodeForXML(rc.htmleditor ?: 0)#</HTMLEDITOR>";
	local.xmlOther &= "<TIMEZONE>#encodeForXML(rc.timezone)#</TIMEZONE>";
	local.xmlOther &= "<LANG>#encodeForXML(rc.lang)#</LANG>";
	local.xmlOther	&= "</item>";
		
		
	FileWrite(application.GSUSERSPATH & rc.usr & ".xml", local.xmlOther);
	}	
	
	


	
void function flushCache()	{
	
	// java stuff
	local.cacheManager 	= createObject('java', 'net.sf.ehcache.CacheManager').getInstance();
	rc.arRegions 		= local.cacheManager.getCacheNames(); // this is a mix of CF and Java
	
	
	
	for (local.region in rc.arRegions)	{
		CacheRemoveAll(local.region); 
		}
	
	}	
	
	
}	