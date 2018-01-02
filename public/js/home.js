
$(document).on('click','.location_total_devices',function(){
   var id = $(this).attr('id');
   $(".selectLocation").val(id);
    localStorage.setItem('location', id);
    $("#page-content").load("page/inventory.php?id="+id);
    $(".left li").removeClass("active");
  	$(".left li:nth-child(3)").addClass("active");
  	
})


$(document).on('click','.category_sum_box',function(){
    var category = $(this).children('.name').text();
    category=category.trim().replace(/ /g, '%20');
    localStorage.setItem('category', category);
    var id = localStorage.getItem("location");
    $("#page-content").load("page/inventory.php?category="+category+"&id="+id);
    $(".left li").removeClass("active");
  	$(".left li:nth-child(3)").addClass("active");
})