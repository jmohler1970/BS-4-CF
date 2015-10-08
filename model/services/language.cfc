component	{




struct function readProperties(required string propertyfile)		{
		
	local.stResult = {};
	
	local.stSection = getProfileSections(arguments.propertyfile);
  
     
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



}