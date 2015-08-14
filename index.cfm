
<cfimport prefix="b" taglib="bootstrap">

<cfparam name="url.view" default="home">
<cfparam name="url.bootswatch" default="default">



<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	
<head>
	<cfinclude template="layouts/head.cfm">
</head>


<body>


<b:container>


<cfinclude template="layouts/menu.cfm">



<cfinclude template="views/#url.view#.cfm">

   
   
<cfinclude template="layouts/footer.cfm">
      
      
</b:container>
 
 
</body>
</html>     
      