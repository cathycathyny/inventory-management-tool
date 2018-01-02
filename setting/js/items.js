var addclass = 'clicked';

$(document).on('click','.filterBox',function(){
    categoryPicked = "."+$(this).attr('id');
    $('.filterBox').removeClass(addclass);
    $(this).addClass(addclass);
    $('div #edit').addClass('hide');
    $(categoryPicked).removeClass('hide');
})

// add new row to table
$(document).on('click','#item-add',function(){
	//var rowCount = $(this).parents('#item_table').children('tbody').children('tr').length;
  	$(this).parents('#items_table').children('tbody').children('tr:last').after('<tr><td contenteditable="true">undefined</td><td><span class="item-remove"><i class="fa fa-minus fa-1x"></i></span></td><td class="hide">new</td></tr>');
});

$(document).on('click','.item-remove',function(){
	var item_position =$(this).parents('tr').find('td:eq(2)').html();
    var selectedRow = $(this).parent().parent();
    
	if(item_position!='new'){
        var check = confirm("Are you sure to delete this item?");
        
        if (check==true){
        	$.ajax({
                url: 'request/remove_stock.php',
                async: true,
                type: 'post',
                data: {"item_position":item_position},
                success:function(data){
                	alert('Item Removed!');
                    selectedRow.remove();
                }
            });
            

        }
    }else{
        $(this).parent().parent().remove();
    }

});

$(document).on('click','.item-save',function(){
	var item_name =[];
	var item_id =[];

    var item_category =$(this).parents('#category_row').children('th').html();
    var item_location =$(this).parents('#category_row').find('td:eq(0)').html();

    
	var rows = $(this).parents('#items_table').children('tbody').find('tr');


	for (var i = 2; i < rows.length; i++) {
		var name = $(rows[i]).find('td:eq(0)').html();
		var position = $(rows[i]).find('td:eq(2)').html();
		item_name.push(name);
		item_id.push(position);
	}

	$.ajax({
        url: 'request/update_stock_item.php',
        async: true,
        type: 'post',
        data: {"item_name":item_name,"item_id":item_id,'item_category':item_category,'item_location':item_location},
        success:function(data){
        	alert('Items Updated!');
        }
    });
});