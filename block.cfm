
<cfimport prefix="b" taglib="bootstrap">



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

			<b:h1>Block Element Examples</b:h1>
			<p>View code for details.</p>
		</b:column>	
	</b:row>
</div>


<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>



<cfset rc = { heading = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium magna in sem pharetra, gravida tristique nulla ultricies. Suspendisse ornare nulla quis tempus dictum. Random <b> tag. It should be escaped. In at ipsum ut sapien efficitur dictum sed a nibh. Nunc convallis at ligula sed porta. Cras convallis turpis sed eleifend fringilla. Mauris in pulvinar justo. Cras vehicula vehicula neque nec cursus. Vivamus leo enim, ultricies nec elit a, efficitur fringilla quam. Nam quam ligula, rhoncus at ultrices ut, lacinia eget lacus. Donec lacinia pretium vestibulum. Nulla facilisi. Phasellus hendrerit sit amet libero id feugiat. Mauris libero massa, venenatis at tortor ut, accumsan vestibulum leo. Nullam semper, quam ac rhoncus porttitor, lorem tellus lobortis eros, id aliquam leo tellus bibendum sem. Duis posuere hendrerit ultricies." }>


<h1>Normal Rendering</h1>

<b:well>

	<b:h1 binding="heading" />
	<b:h2 binding="heading" />
	<b:h3 binding="heading" />
	<b:h4 binding="heading" />
	<b:h5 binding="heading" />
	<b:h6 binding="heading" />
	<b:p binding="heading" />
	<b:blockquote binding="heading" />

</b:well>


<h1>Rendered is false</h1>

<b:well>

	<b:h1 binding="heading" rendered="false" />
	<b:h2 binding="heading" rendered="false" />
	<b:h3 binding="heading" rendered="false" />
	<b:h4 binding="heading" rendered="false" />
	<b:h5 binding="heading" rendered="false" />
	<b:h6 binding="heading" rendered="false" />
	<b:p binding="heading" rendered="false" />
	<b:blockquote binding="heading" rendered="false" />

</b:well>


<h1>Processed is false</h1>

<b:well>

	<b:h1 binding="heading" processed="false" />
	<b:h2 binding="heading" processed="false" />
	<b:h3 binding="heading" processed="false" />
	<b:h4 binding="heading" processed="false" />
	<b:h5 binding="heading" processed="false" />
	<b:h6 binding="heading" processed="false" />
	<b:p binding="heading" processed="false" />
	<b:blockquote binding="heading" processed="false" />

</b:well>


<h1>Stress test is false</h1>
<p>There over 1000 rows inside of the hidden well. Check you debug code to see how fast it ran</p>

<b:well rendered="false">

	<cfloop from = "0" to="1001" index="i">
		<b:h1 binding="heading" />
		<b:h2 binding="heading" />
		<b:h3 binding="heading" />
		<b:h4 binding="heading" />
		<b:h5 binding="heading" />
		<b:h6 binding="heading" />
		<b:p binding="heading" />
		<b:blockquote binding="heading" />
	</cfloop>

</b:well>


<cfinclude template="assets/footer.cfm">
      
      
</b:container>
 
 
</body>
</html>     
      