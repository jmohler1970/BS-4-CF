<cfimport prefix="b" taglib="../bootstrap">


<b:head>

<title>Bootstrap for ColdFusion</title>

<meta name="author" content="James Mohler" />
<meta name="description" content="Bootstrap tags for ColdFusion, a powerful tag libary that takes the best from Bootstrap for next-gen Front-end Enterprise Applications fast and easy supporting HTML5." />
<meta name="KEYWORDS" content="ColdFusion, bootstrap, framework, java, enterprise, server, faces, jquery, usability, next-gen, web, html5, easy, modern, well-designed, website, state-of-the-art" />
<meta name="robots" content="index, follow" />
        

<meta name="viewport" content="width=device-width, initial-scale=1" />


<cfswitch expression="#session.theme#">
	<cfcase value="default">
		<b:outputStylesheet />
	</cfcase>
	<cfcase value="4alpha">
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha/css/bootstrap.min.css" rel="stylesheet">
	</cfcase>
	<cfdefaultcase>
		<link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.5/<cfoutput>#lcase(session.theme)#</cfoutput>/bootstrap.min.css" rel="stylesheet">
	</cfdefaultcase>	
</cfswitch>


<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/css/select2.min.css" rel="stylesheet" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/awesome-bootstrap-checkbox/0.3.4/awesome-bootstrap-checkbox.css" rel="stylesheet">
<link href="https://cdn.datatables.net/1.10.8/css/dataTables.bootstrap.min.css" rel="stylesheet">

<!--- jQuery UI support --->
<link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.css" rel="stylesheet">


<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>


<cfswitch expression="#session.theme#">
	<cfcase value="4alpha">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha/js/bootstrap.min.js"></script>
	</cfcase>
	<cfdefaultcase>
		<b:outputScript />
	</cfdefaultcase>
</cfswitch>		


<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.min.js"></script>
<script src="https://cdn.datatables.net/1.10.8/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.8/js/dataTables.bootstrap.min.js"></script>

<b:outputScript library="local" name="application.js" />


<b:outputStyleSheet name="application.css" processed="#IIF(url.view EQ 'image', 1, 0)#" />

<style type="text/css">
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
</style>

	
	
</b:head>
