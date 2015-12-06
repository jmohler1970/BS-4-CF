<cfimport prefix="b" taglib="../../views/_bootstrap">

<cfoutput>

<!DOCTYPE html>
<html lang="en" >
<b:head>
<meta charset="utf-8">

  <title>#rc.get_page_clean_title# - #rc.get_site_name#</title>
	
	<meta name="robots" content="index, follow">

	<link href='//fonts.googleapis.com/css?family=Yanone+Kaffeesatz' rel='stylesheet' type='text/css'>

	
	<b:outputStyleSheet library="innovation" name="assets/css/reset.css" />
	<b:outputStyleSheet library="innovation" name="style.css?v=#rc.get_site_version#" />

	#rc.get_header#
</b:head>


<body id="#rc.get_page_slug#" >
	
	<!-- site header -->
	<header>
		<div class="header">
			<div class="wrapper">
				
				<!-- logo/sitename -->
				<a href="#rc.get_site_url#" id="logo" >#rc.get_site_name#</a>
				
				<!-- main navigation -->
				<nav id="main-nav">
					<ul>#rc.get_navigation#</ul>
				</nav>
			</div>
		</div>
		
		<!-- breadcrumbs: only show when NOT on homepage -->
		<p class="breadcrumbs" >
			<span class="wrapper">
				<a href="#rc.get_site_url#">Home</a> &nbsp;&nbsp;&##149;&nbsp;&nbsp; 
				
				#rc.get_parent_link#
				<b>#rc.get_page_clean_title#</b>
			</span>
		</p>
		
  </header>
</cfoutput>
 