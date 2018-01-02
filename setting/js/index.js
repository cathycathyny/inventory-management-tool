$(document).ready(function(){
  //$("#page-content").load("page/home.php");

  $(".left li").hover(function(){
      $(".left li").removeClass("hover");
      $(this).addClass("hover");
    },function(){
      $(this).removeClass("hover")
    })

    $(".left li").click(function(){
      $(".left li").removeClass("active");
      $(this).addClass("active");
    })

});


function editLocation(){
  //$("#page-content").load("location.php");
  window.open("location.php", "_self");
}

function editCategory(){
  $("#page-content").load("navigate/category.php");
}

function editDefaultItem(){
  $("#page-content").load("navigate/default_item.php");
}

function editItems(){
  $("#page-content").load("navigate/items.php");
}
