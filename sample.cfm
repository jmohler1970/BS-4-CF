
<cfimport prefix="b" taglib="bootstrap">


<cfset rc.theme = url.theme>

<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	
<head>
	<cfinclude template="assets/head.cfm">  
</head>


<body>


<b:container>


<cfinclude template="assets/menu.cfm">

<div class="page-header">
	<b:row>
		<b:column span="12">	

			<b:h1 binding="theme" />
			<p>All themes are from Bootswatch and are not a part of this distribution.</p>
		</b:column>	
	</b:row>
</div>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>




<cfinclude template="samples/navbar.cfm">


<cfinclude template="samples/button.cfm">


<cfinclude template="samples/typography.cfm">


<cfinclude template="samples/table.cfm">


<cfinclude template="samples/forms.cfm">


<cfinclude template="samples/nav.cfm"><!--- includes tabs --->


<cfinclude template="samples/indicators.cfm">


<cfinclude template="samples/containers.cfm">


<cfinclude template="samples/dialogs.cfm">




<cfinclude template="assets/footer.cfm">


</b:container>







</body>
</html>