//Global variables
var categoryPicked = '';
var itemPicked = '';
var currentAmount = '';
var addclass = 'clicked';


// click event on categoryBox: to get items under the picked category
$(document).on('click','.categoryBox',function(){;
        categoryPicked = $(this).children('p').text();
        $('.categoryBox').removeClass(addclass);
        $(this).addClass(addclass);
        var location = localStorage.getItem("location");

        $.ajax({
            type: 'post',
            url: 'request/getCategoryItem.php',
            data: {"name":categoryPicked,"location":location},
            dataType: 'json',
            success: function(items) {
                $('.itemList').empty();
                $('.itemList').append('<h2 class="form_name">Item Name:</h2>');
                for (i=0; i<items.length; i++){
                    $('.itemList').append('<div class="itemBox"><p>'+items[i]+'</p></div>');
                }

                $('.itemBox').click(function(){
                    itemPicked = $(this).children('p').text();
                    $('.itemBox').removeClass(addclass);
                    $(this).addClass(addclass);
                    var location = localStorage.getItem("location");
                    itemBoxClicked(categoryPicked,itemPicked,location);
                })

            }
        });
})


// click event on addButton: to update item amount in the inventory
$(document).on('click','.addButton',function(){
    var addAmount = parseInt($('.addNum').val());
    var updatedAmount = currentAmount+addAmount;
    var location = localStorage.getItem("location");
    
    $.ajax({
        type: 'post',
        url: 'request/updateItemAmount.php',
        data: {"item":itemPicked,"amount":updatedAmount,"location":location},
        dataType: 'json',
        success: function(result) {
            alert("Successfully added "+addAmount+". There are "+updatedAmount+" in the inventory.");
            //resetAdding();
            $('.currentAmount').text(updatedAmount);
        }
    });         
});


// To update the picked item amount when item Box is clicked
function itemBoxClicked(category,item,location){
    $.ajax({
        type: 'post',
        url: 'request/getItemAmount.php',
        data: {"item":item,"location":location},
        dataType: 'json',
        success: function(amount) {
            currentAmount = amount;
            $('.currentAmount').text(amount);

        }
    });
};

// function to remove everthing picked from the add form
function resetAdding(){
    categoryPicked = '';
    itemPicked = '';
    currentAmount = '';
    $('.categoryBox').removeClass(addclass);
    $('.itemList').empty();
    $('.itemList').append('<h2 class="form_name">Item Name:</h2>');
    $('.currentAmount').text(currentAmount);
}

// function to increase add number 
function addNumber(){
    var num = +$(".addNum").val() + 1;
    $(".addNum").val(num);
}

// funtion to decrease add number
function removeNumber(){
    var num = +$(".addNum").val() - 1;
    if (num>=1){
        $(".addNum").val(num);
    }
}