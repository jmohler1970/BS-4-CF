component	{
	
	
string function get_site_root()	{
	
	return this.suggest_site_path();
		
	}
	
	
	
// Suggestion function for SITEURL variable
string function suggest_site_path() output="false" {

		
		
	return "http://" & cgi.server_name & (cgi.server_port != 80 ? ":" & cgi.server_port : "") & "/" & cgi.script_name.replace("index.cfm", "");
	}


string function get_site_version() output="false" {


	return application.GSVERSION;
	}	
	
	
}	