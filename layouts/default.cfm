<cfimport prefix="b" taglib="../vendor/tags/bootstrap">



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<b:head key="brand">

	<META http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="author" content="James Mohler" />
	<meta name="description" content="Bootstrap tags for ColdFusion, a powerful tag libary that takes the best from Bootstrap for next-gen Front-end Enterprise Applications fast and easy supporting HTML5." />
	<meta name="KEYWORDS" content="ColdFusion, bootstrap, framework, java, enterprise, server, faces, jquery, usability, next-gen, web, html5, easy, modern, well-designed, website, state-of-the-art" />
	<meta name="robots" content="index, follow" />
        

<meta name="viewport" content="width=device-width, initial-scale=1" />


<cfswitch expression="#session.bootswatch#">
	<cfcase value="default">
		<b:outputStylesheet />
	</cfcase>
	<cfcase value="4alpha">
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha/css/bootstrap.min.css" rel="stylesheet">
	</cfcase>
	<cfdefaultcase>
		<link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/<cfoutput>#lcase(session.bootswatch)#</cfoutput>/bootstrap.min.css" rel="stylesheet">
	</cfdefaultcase>	
</cfswitch>

<!--- Support for all icon libraries. It is recommended that you choose one --->
<!--- Glypicons are built into Bootstrap --->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" 	rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.min.css" 		rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" 			rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/octicons/3.5.0/octicons.min.css" 				rel="stylesheet">


<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/css/select2.min.css" rel="stylesheet" />


<link href="https://cdnjs.cloudflare.com/ajax/libs/awesome-bootstrap-checkbox/0.3.4/awesome-bootstrap-checkbox.css" rel="stylesheet">
<link href="https://cdn.datatables.net/1.10.8/css/dataTables.bootstrap.min.css" rel="stylesheet">

<!--- jQuery UI support --->
<link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.css" rel="stylesheet">

<!--- bootstrap.wysihtml5 --->
<b:outputStyleSheet library="vendor" name="bootstrap-wysiwyg.css" />
<b:outputStyleSheet library="vendor" name="material.css" />

<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>


<cfswitch expression="#session.bootswatch#">
	<cfcase value="4alpha">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha/js/bootstrap.min.js"></script>
	</cfcase>
	<cfdefaultcase>
		<b:outputScript />
	</cfdefaultcase>
</cfswitch>		

<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.min.js"></script>
<script src="https://cdn.datatables.net/1.10.8/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.8/js/dataTables.bootstrap.min.js"></script>


<!--- bootstrap.wysihtml5 --->
<b:outputScript library="local"	name="hotkeys.js" />
<b:outputScript library="vendor"	name="bootstrap-wysiwyg.js" />
<b:outputScript library="local"	name="application.js" />


<b:outputStyleSheet name="application.css" processed="#IIF(getItem() EQ 'image', 1, 0)#" />

<style type="text/css">

/* fixes tabs for background colors	*/
.nav-tabs > li > a { margin-right : 0 !important;}	
	
h1,h2	{
padding-top: 50px;	
	
}	
	
.show-grid{
	margin-bottom:15px
}

.show-grid [class^=col-]{
	padding-top:10px;
	padding-bottom:10px;
	background-color:##eee;
	background-color:rgba(86,61,124,.15);
	border:1px solid ##ddd;
	border:1px solid rgba(86,61,124,.2)
}


#menu-order {
	list-style: none;
	margin: 0 0 25px 0;
}

#menu-order li {
	text-shadow: 1px 1px solid rgba(255,255,255,.3);
	cursor: move;
	display: block;
	margin: 2px 0;
	border: 1px solid #eee;
	background: #fbfbfb;
	padding: 5px 10px;
}

#menu-order li:hover {
	border: 1px solid #ccc;
	background: #f6f6f6;
}

#menu-order li em {
	float: right;
	color: #666;
}

#menu-order li.placeholder-menu {
	height: 18px;
	background: #FFB164;
	border: 1px solid #FF9933;
}

</style>


	
</b:head>

<body>

	<a href="https://github.com/jmohler1970/BS-4-CF"><img style="position: absolute; top: 0; right: 0; border: 0; z-index: 2000" src="https://s3.amazonaws.com/github/ribbons/forkme_right_red_aa0000.png" alt="Fork me on GitHub"></a>
 

	<b:container>
	
	
		
	<cfoutput>
		#body.replacelist("~/", application.Bootstrap.actionRoot)#  <!--- make sure that inner layouts have all ready done the escape--->
	</cfoutput>
	
     
	</b:container>




<p>&nbsp;</p>
<p>&nbsp;</p>


<p>Made by <a href="https://github.com/jmohler1970" rel="nofollow">James Mohler</a>.</p>
<p>Code released under the MIT License and is maintained at <a target="_blank" href="https://github.com/jmohler1970">GitHub</a>.</p>
<p>	<small>Based on and inspired by <a href="http://getbootstrap.com" rel="nofollow">Bootstrap</a>,
	<a href="http://bootswatch.com/" rel="nofollow">Bootswatch</a>, and
	<a href="http://bootsfaces.net/" rel="nofollow">Bootsfaces</a><br />
	<a href="https://github.com/flatlogic/awesome-bootstrap-checkbox">Awesome Bootstrap Checkbox</a>
	Icons from <a href="http://fortawesome.github.io/Font-Awesome/" rel="nofollow">Font Awesome</a><br />
	Web fonts from <a href="http://www.google.com/webfonts" rel="nofollow">Google</a>.
	</small>	
</p>


</body>
</html>     