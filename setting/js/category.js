// add new row to table
$(document).on('click','.category-add',function(){
	var rowCount = $('#category_table tr').length;
  	$('#category_table tr:last').after('<tr><td>'+rowCount+'</td><td contenteditable="true">undefined</td><td colspan="2"><span class="category-remove"><i class="fa fa-minus fa-1x"></i></span></td><td class="hide">new</td></tr>');
});

//remove category row
$(document).on('click','.category-remove',function(){
	var rowCount = $('#category_table tr').length;
	if (rowCount>11){
		$(this).parent().parent().remove();
	}
});

// click event to update category list
$(document).on('click','.category-save',function(){
	var category_name =[];
	var old_name=[];

	var rows = $('#category_table').find('tr');

	for (var i = 1; i < rows.length; i++) {
		var name = $(rows[i]).find('td:eq(1)').html();
		category_name.push(name);
		var old = $(rows[i]).find('td:eq(3)').html();
		old_name.push(old);
	}

	$.ajax({
        url: 'request/update_category.php',
        async: true,
        type: 'post',
        data: {"category_name":category_name,"old_name":old_name},
        success:function(data){
            alert("Category Updated!");
        }
    });
});