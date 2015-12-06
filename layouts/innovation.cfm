<cfimport prefix="b" taglib="../views/_bootstrap">



<cfinclude template="innovation/header.cfm"> 

<cfoutput>	
	<div class="wrapper clearfix">
		<!-- page content -->
		<article>
			<section>
				
				<!-- title and content -->
				<h1>#rc.title#</h1>
				#body#
				
				<!-- page footer -->
				<div class="footer">
					<p>Published on <time pubdate>#rc.published#</time></p>
				</div>
			</section>
			
		</article>
		
		<cfinclude template="innovation/sidebar.cfm"> 
	</div>

</cfoutput>

<cfinclude template="innovation/footer.cfm"> 


<cfset request.layout = false>