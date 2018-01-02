// add new row to table
$(document).on('click','.table-add',function(){
	var rowCount = $('#location_table tr').length;
  	$('#location_table tr:last').after('<tr><td>'+rowCount+'</td><td contenteditable="true">undefined</td></td><td colspan="2"><span class="table-remove"><i class="fa fa-minus fa-1x"></i></span></td><td class="hide">new</td></tr>');
});

// delete the location from database
$(document).on('click','.table-remove',function(){
	var rowCount = $('#location_table tr').length;
	if (rowCount>5){
		var location_id = $(this).parents('tr').find('td:eq(0)').html();
		$.ajax({
	        url: 'request/remove_location.php',
	        async: true,
	        type: 'post',
	        data: {"location_id":location_id},
	        success:function(data){
	       		alert("Location Removed!");
	       		$('#location_table tr:last').remove();
	        }
    	});
		//$('#location_table tr:last').remove();

	}
});

// save location update
$(document).on('click','.location-save',function(){
	var location_name =[];

	var rows = $('#location_table').find('tr');

	for (var i = 1; i < rows.length; i++) {
		var name = $(rows[i]).find('td:eq(1)').html();
		location_name.push(name);
	}

	$.ajax({
        url: 'request/update_location.php',
        async: true,
        type: 'post',
        data: {"location_name":location_name},
        success:function(data){
       		alert("Location Updated!");
        }
    });
});
