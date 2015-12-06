component	accessors="true"	{

	property	beanFactory;
	property	framework;
	
	property	pageService;
	

void function home(required struct rc) output="false"	{
	
	
	if(rc.keyExists("deleteall"))	{
		pageService.deleteAllBackups();
		}

	rc.qryBackup = pageService.findBackups();
	}


void function edit(required struct rc) output="false"	{
	
	rc.append(pageService.get(rc.slug, application.GSBACKUPSPATH & "pages/" ));
	}


void function restore(required struct rc)	{
	
	pageService.restoreBackup(rc.slug);
	variables.framework.redirect("pages.home", "all");
	}


void function delete(required struct rc)	{
	
	pageService.deleteBackup(rc.slug);
	
	variables.framework.redirect(".home", "all");
	}


void function after(require struct rc)	{
	
	variables.framework.setLayout("pages");
	}	
		

	
}