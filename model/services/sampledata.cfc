

component		{
	

query function getTable()	{
	
	local.qryData = QueryNew("Id,Icon,Album,Message,Score,Delete");


	local.qryData.AddRow([
		{id = 1, Icon = "glass",		Album="Appetite for Destruction", Message = "Welcome to the Jungle",	Score = 50, Delete = 0},
		{id = 2, Icon = "glass", 	Album="Appetite for Destruction", Message = "Paradise City", 		Score = 25, Delete = 0},
		{id = 3, Icon = "signal",	Album="Use Your Illusion I", Message = "November Rain", 			Score = 60, Delete = 0},
		{id = 4, Icon = "signal",	Album="Use Your Illusion I", Message = "Live and Let Die", 			Score = 80, Delete = 0},
		{id = 5, Icon = "signal",	Album="Use Your Illusion I", Message = "Don't Cry (Original)", 		Score = 80, Delete = 0},
		{id = 6, Icon = "signal",	Album="Use Your Illusion I", Message = "Perfect Crime",	 		Score = 80, Delete = 1},
		{id = 7, Icon = "download",	Album="G N' R Lies", Message = "Patience", 						Score = 90, Delete = 0},
		{id = 8, Icon = "download",	Album="G N' R Lies", Message = "Move to the City", 				Score = 90, Delete = 0},
		{id = 9, Icon = "flag",		Album="Use Your Illusion II",	Message = "Don't Cry", 				Score = 90, Delete = 0} // no comma
		]
		); 
		
	return local.qryData;	
	}	// end function
	
	
}