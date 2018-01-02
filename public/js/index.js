$(document).ready(function(){
  localStorage.setItem('location', $('.selectLocation').val());
  //var location = localStorage.getItem("location");
  //$("#page-content").load("page/home.php?id="+location);

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

    $(".logo").click(function(){
        if($(".sidebar").css("left") == "0px"){
            $(".sidebar").css("left","-164px");
            $("#page-content").css("left","56px");
        }else{
            $(".sidebar").css("left","0");
            $("#page-content").css("left","220px");
        }
    })

});

function loadLocation(value){
  var current = $(".active").children('a').text().toLowerCase();
  
  if(current=="add" || current=="remove"){
    itemBoxClicked(categoryPicked,itemPicked,value);
    localStorage.setItem('location', value);

  }else if(current=="inventory"){
    var category = localStorage.getItem('category');
    console.log(category);
    $("#page-content").load("page/"+current+".php?id="+value+"&category="+category);
  
  }else{
    $("#page-content").load("page/"+current+".php?id="+value);
    localStorage.setItem('location', value);
  }

}

function homePage(){
  var location = localStorage.getItem("location");
  $("#page-content").load("page/home.php?id="+location);
}

function addPage(){
  var location = localStorage.getItem("location");
  var categoryPicked = '';
  var itemPicked = '';
  $("#page-content").load("page/add.php");
}

function removePage(){
  var location = localStorage.getItem("location");
  var categoryPicked = '';
  var itemPicked = '';
  $("#page-content").load("page/remove.php?id="+location);
}

function inventoryPage(){
  var location = localStorage.getItem("location");
  localStorage.setItem('category', "");
  $("#page-content").load("page/inventory.php?id="+location);
}

function locationPage(){
  var location = localStorage.getItem("location");
  $("#page-content").load("page/location.php?id="+location);
}

function historyPage(){
  var location = localStorage.getItem("location");
  $("#page-content").load("page/history.php?id="+location);
}

function settingPage(){
  var location = localStorage.getItem("location");
  $("#page-content").load("page/setting.php?id="+location);
}