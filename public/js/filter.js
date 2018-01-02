var addclass = 'clicked';

$(document).on('click','.filterBox',function(){;
    categoryPicked = $(this).text();
    $('.filterBox').removeClass(addclass);
    $(this).addClass(addclass);
    var category=categoryPicked.trim().replace(/ /g, '%20');
    localStorage.setItem('category', category);
    var location = localStorage.getItem("location");

        $.ajax({
            type: 'post',
            url: 'request/filterInventory.php',
            data: {"location":location, "category":categoryPicked},
            dataType: 'json',
            success: function(items) {
                $('.filterResult').empty();
                $('.filterResult').append('<table id="inventory_table"><tr><th>Category</th><th>Item Name</th><th>Amount</th></tr>');
                for (i=0; i<items.length; i++){
                    $('.filterResult #inventory_table').append("<tr><td>"+items[i].item_category+"</td><td>"+items[i].item_name+"</td><td>"+items[i].item_amount+"</td></tr>");
                }
                $('.filterResult').append("</table>");
            }
        });
})
