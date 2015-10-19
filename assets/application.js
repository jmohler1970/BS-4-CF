$( document ).ready(function() {



  $('[data-toggle="popover"]').popover();
  $('[data-toggle="tooltip"]').tooltip();


  $('select.select2').select2();
  
  $('table.datatables').DataTable({
	paging : false,
	order  : [[ 1, "asc" ]]
  	});

});
