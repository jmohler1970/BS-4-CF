component	{
	


query function findAll(string path = "")	output="false"	{

	return directoryList(application.GSDATAUPLOADPATH & arguments.path, false, "query");
	}	
	

	
boolean function createFolder(required string path, required string foldername) output="false"	{
	
	
	arguments.foldername = arguments.foldername.ReplaceList("/,\,<,[,^,>,],*,>,. ", "");
	
	arguments.foldername = arguments.foldername.Replace(",", "", "all");
	
	
	local.target 		= application.GSDATAUPLOADPATH & arguments.path & '/' & arguments.foldername;
	local.targetThumb	= application.GSTHUMBNAILPATH  & arguments.path & '/' & arguments.foldername;
	
	
		
	
	if (!DirectoryExists(targetThumb))	{
	
		directoryCreate(targetThumb);
		}

	
	if (!DirectoryExists(local.target))	{
	
		directoryCreate(target);
		
		return true;
		}
	


	return false;	
	
	}
	

boolean function process(required struct rc) output="false"	{
	
	
	rc.nameconflict = "overwrite";


	local.preResize = 200;


	local.targetpath = "#application.GSDATAUPLOADPATH##rc.path#/";
	local.thumbpath = "#application.GSTHUMBNAILPATH##rc.path#/";




//	try	{
	
		local.result = fileUpload(local.targetPath, "csv1", "*/*", rc.nameconflict);
	

		local.targetname = local.result.serverfile.replace(",", "_", "all");// files with commas are problematic
			
				
		FileMove(local.targetpath & local.result.serverfile, targetpath & targetname);
			
		if (local.result.serverFileExt == "jpg")	{
			local.myImage = ImageNew(local.targetpath & local.targetname); 
			ImageResize(local.myImage, local.preResize, "");
			ImageWrite( local.myImage, local.thumbpath & local.targetname);
			}	

//		}
		
//	catch (any e)	{
			
							
				
//		if (!e.message CONTAINS "did not contain a file")	{
//			return false;
//			}

//		}	
		
		
	return true;	
	}

	
boolean function delete(required struct rc) output="false" hint="files or folders"	{
	
	param rc.folder = "";
	
	if (rc.folder != "")	{
		var target 		= application.GSDATAUPLOADPATH 	& (rc.path == "" ? "" : rc.path & '/') & rc.folder;
		var targetThumb 	= application.GSTHUMBNAILPATH 	& (rc.path == "" ? "" : rc.path & '/') & rc.folder;
	
	
		if (DirectoryExists(target))	{
			
			var arDir = DirectoryList(target, true, "path");
	
			for (i in arDir)	{
				FileDelete(i);
				}

	
			directoryDelete(target);
			}
	
		if (DirectoryExists(targetThumb))	{
	
			var arDir = DirectoryList(targetThumb, true, "path");
	
			for (i in arDir)	{
				FileDelete(i);
				}

	
			directoryDelete(targetThumb);
			}
	
		
		return true;
		}

	
	
	// must be working files
	var target 		= application.GSDATAUPLOADPATH & rc.path & '/' & rc.name;
	var targetThumb	= application.GSTHUMBNAILPATH & rc.path & '/' & rc.name;
	
	
	if (FileExists(targetThumb))	{
	
		FileDelete(targetThumb);
		}


	if (FileExists(target))	{
	
		FileDelete(target);
			
		return false;
		}
		
	return true;	
	}
	
	
	
struct function details(required struct rc) output="false"	{
	
	param rc.name;
	

	
	var target 		= application.GSDATAUPLOADPATH & rc.path & '/' & rc.name;
	var targetThumb = application.GSTHUMBNAILPATH & rc.path & '/' & rc.name;
	
	
	rc.info = {width = 0, height = 0, imageFolder = target};
	rc.info.exists = FileExists(rc.info.imageFolder);

	if (rc.info.exists)	{
		if (isImageFile(rc.info.imageFolder))	{
			img = ImageRead(rc.info.imageFolder);	
			StructAppend(rc.info, ImageInfo(img));
			//rc.exif = ImageGetEXIFMetaData(img);
			}
		}

	
	rc.infothumb = {width = 0, height = 0, imageFolder = targetThumb};
	rc.infothumb.exists = FileExists(rc.infothumb.imageFolder);

	if (rc.infothumb.exists)	{
		if (isImageFile(rc.infothumb.imageFolder))	{
			img = ImageRead(rc.infothumb.imageFolder);	
			StructAppend(rc.infothumb, ImageInfo(img));
			//rc.exif = ImageGetEXIFMetaData(img);
			}
		}
	
	
	return rc;
	}	
	
	
}	