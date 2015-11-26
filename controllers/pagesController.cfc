component	accessors="true"	{

	property	beanFactory;
	property	framework;
	
	property	pageService;
	

void function home(required struct rc) output="false"	{
	
	
	rc.qryPage = pageService.findAll();
	}


void function edit(required struct rc) output="false"	{
	
	param rc.slug = "";
	
	if (cgi.request_method == "post")	{
		
		if (rc.title == "")	{
			rc.empty = true;
			}
		
		rc.menuStatus 	= rc.menu.status ?: '';
		rc.menuOrder	= rc.menu.order;
		rc.menu		= rc.menu.text;
			
		pageService.set(rc);

		variables.framework.redirect(".home", "all");	
		} // end post

	rc.append(pageService.get(rc.slug));
	
	rc.qryTemplate = pageService.getTemplate();
	}



void function clone(required struct rc) output="false"	{
	
	pageService.clone(rc.slug);
	
	
	variables.framework.redirect("pages.home", "all");	
	}

	
void function menu(required struct rc) output="false"	{

	rc.success = false;
	
	if (cgi.request_method == "post")	{
		
		rc.success = pageService.saveMenu(arguments.rc.menuOrder);
		}

	rc.qryMenu = pageService.findAll("menu");	
	}	



void function delete(required struct rc) output="false"	{
	
	pageService.delete(rc.slug);
	
	rc.deleteMessage = true;
	
	variables.framework.redirect("pages.home", "all");	
	}
	
	
	

	

}