<cfimport prefix="b" taglib="../../vendor/tags/bootstrap">


<b:h1 key="menu_manager" />


<b:alert look="success" key="menu_manager_success" processed="#rc.success#" />


<b:p key="menu_manager_desc" />


<form action="?" method="post">

<ul id="menu-order" class="ui-sortable">
	<cfoutput query="rc.qryMenu">
	<li class="clearfix" rel="#slug#">
		<strong>## #menuOrder#</strong>
		
		#menu# <em>#Title#</em>
	</li>	
	</cfoutput>	
</ul>	

	<input type="hidden" name="menuOrder" value="" /><!--- Order gets stuffed in here --->

	<b:commandButton key="SAVE_MENU_ORDER" />
</form>




<b:p key="NO_MENU_PAGES" processed="#IIF(rc.qryMenu.recordcount EQ 0, 1, 0)#" />


<script>
$(function() {	
	
	$("#menu-order").sortable({
		cursor: 'move',
		placeholder: "placeholder-menu",
		update: function() {
			var order = '';
			$('#menu-order li').each(function(index) {
				var cat = $(this).attr('rel');
				order = order+','+cat;
				});
			$('[name=menuOrder]').val(order);
			}
		});
	$("#menu-order").disableSelection();
	
	});
</script>
