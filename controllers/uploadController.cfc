component	accessors="true"	{

	property	beanFactory;
	property	framework;
	
	property	uploadService;
	property	gsService;
	

void function before(required struct rc)	{

	
	param rc.path   	= "";
	rc.uploadspath 	= "data/uploads/";
	rc.thumbspath 		= "data/thumbs/";
	}
	
	
	

void function home(required struct rc) output="false"	{
	
	param rc.imagefilter 	= "Show_All";
	rc.totalsize 			= 0;
	rc.path 				= rc.path.replace('|', '/', 'all');
	
	
	rc.qryDirectory = uploadService.findAll(rc.path);
	
	for (var j = 1; j <= rc.qryDirectory.recordcount; j++)	{
		rc.totalsize += rc.qryDirectory.size[j];
		}
	
	rc.totalsize = rc.totalsize \ 1024;
	
	rc.site_root = gsService.get_site_root();
	}



void function createFolder(required struct rc) output="false"	{

	
	rc.success = uploadService.createFolder(rc.path, rc.foldername);
	

	variables.framework.redirect("upload.home", "all");
	}



void function details(required struct rc) output="false"	{
	
	rc.append(uploadService.details(rc));
	
	rc.site_root = gsService.get_site_root();
	}



void function process(required struct rc) output="false"	{
	
	rc.success = uploadService.process(rc);
	
	variables.framework.redirect("upload.home", "all");
	}



void function delete(required struct rc) output="false"	{
	
	
	rc.success = uploadService.delete(rc.path, rc.filename);
	
	variables.framework.redirect("upload.home", "all");
	}



void function after(require struct rc)	{
	
	variables.framework.setLayout("pages");
	}	
		


}
