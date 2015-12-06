<cfimport prefix="b" taglib="../../views/_bootstrap">


<cfoutput>
<aside id="sidebar">

	<div class="section" id="socialmedia" >
		<h2>Connect</h2>
		<div class="icons">
			
			<img src="#rc.get_theme_url#/assets/images/break.png" />
			
			<!-- addthis popup - you can add your username if you want analytics: http://www.addthis.com/help/customizing-addthis -->
			<div class="addthis_toolbox" style="display:inline;width:24px;" >
				<a href="//www.addthis.com/bookmark.php?v=250" class="addthis_button_compact"><img src="#rc.get_theme_url#/assets/images/share.png" /></a>
			</div>
			<script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script>
		</div>
	</div>
	
	
	<!-- wrap each sidebar section like this -->
	<div class="section">
		#rc.components.sidebar#
	</div>

	
</aside>
</cfoutput>
