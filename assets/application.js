$( document ).ready(function() {

	// pages
	$(document).on("click", "#show-characters", function() {
		$(".showstatus").toggle();
		$(this).toggleClass('current');
		});
	
	
	$(document).on("click", "#post-menu-enable", function() {
	
	$("#menu-items").slideToggle("fast");
		});
	if ($("#post-menu-enable").is(":checked")) { 
		} else {
		$("#menu-items").css("display","none");
		}
		
	//pages.edit	
	function updateMetaDescriptionCounter() {
		var remaining = 155 - jQuery('#post-metad').val().length;
		jQuery('#countdown').text(remaining);
		Debugger.log('Meta Description has '+remaining+' characters remaining');
		}

	if ($('#post-metad').length) {
		updateMetaDescriptionCounter();
		$('#post-metad').change(updateMetaDescriptionCounter);
		$('#post-metad').keyup(updateMetaDescriptionCounter);
		}


	// pages.home
	$(document).on("click", ".delconfirm", function() {
		var message = $(this).attr("title");
		var dlink = $(this).attr("href");
		var mytr=$(this).parents("tr");
		mytr.css("font-style", "italic");
		var answer = confirm(message);
		if (answer)	{
		return true;
		}
		else
		{
		mytr.css('font-style', 'normal');
		return false;
		}
	});



	$('[data-toggle="popover"]').popover();
	$('[data-toggle="tooltip"]').tooltip();


	$('select.select2').select2();

	$('table.datatables').DataTable({
		paging : false,
		order  : [[ 1, "asc" ]]
		});



	//create new folder in pages
	var newFolderDiv = $("#new-folder");

	$(document).on("click", "#createfolder", function($e) {
		$e.preventDefault();
		newFolderDiv.find("form").show();
		$(this).hide();
		newFolderDiv.find('#foldername').focus();
	});

	$(document).on("click", "#new-folder .cancel", function($e) {
		$e.preventDefault();
		newFolderDiv.find("#foldername").val('');
		newFolderDiv.find("form").hide();
		$('#createfolder').show();
	});

	$(document).on("click", "#metadata_toggle", function($e) {
		$e.preventDefault();
		$("#metadata_window").slideToggle('fast');
		$("#link_window").slideToggle('fast');
		$(this).toggleClass('current');
	});



	//upload/details 
	var copyKitTextArea = $('textarea.copykit');
	$("select#img_info").change(function () {
		var codetype = $(this).val();
		var code = $('p#' + codetype).html();
		var originalBG = $('textarea.copykit').css('background-color');
		var fadeColor = "#FFFFD1";
		copyKitTextArea.fadeOut(500).fadeIn(500).html(code);
	});
	$(document).on("click", ".select-all", function () {
		copyKitTextArea.focus().select();
		return false;
	});


});
