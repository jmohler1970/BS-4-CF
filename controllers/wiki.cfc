component	accessors="true"	{

	property	beanFactory;
	property	framework;
	
	property	pageService;
	property	settingsService;
	

void function home(required struct rc) output="false"	{
	
	param rc.slug = 'index';
	
	rc.append(pageService.get(rc.slug));
	}


void function after(required struct rc)	{
	
	rc.get_page_clean_title = pageService.get_page_clean_title(rc.slug);
	rc.get_page_slug = rc.slug;
	
	rc.get_site_credits = '<a href="' & application.GSSITE_LINK_BACK_URL & '">' & application.GSSITE_FULL_NAME & '</a>';
	rc.get_site_name = settingsService.getWebsite().sitename;
	rc.get_site_version = application.GSVERSION;
	rc.get_site_url = settingsService.getWebsite().siteurl;
	
	rc.get_header 		= ""; // not used in plumacms
	rc.get_navigation 	= pageService.get_navigation(rc.slug, "", rc.get_site_url);
	rc.get_parent_link 	= pageService.get_parent_link(rc.slug);
	rc.get_theme_url	= settingsService.get_theme_url();
	rc.published 		= rc.pubDate;
	
	rc.components 		= settingsService.getComponents();
	
	variables.framework.setLayout("innovation");
	}	

}