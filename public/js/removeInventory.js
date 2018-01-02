// click event on removeButton: to update new inventory amount and add to out record
$(document).on('click','.removeButton',function(){
    var removeAmount = parseInt($('.removeNum').val());
    var updatedAmount = currentAmount-removeAmount;
    var ticketNumber = parseInt($('.ticketNumber').val());
    var outPerson = $('.outPerson').val();
    var comments = $('.comments').val();
    var location = localStorage.getItem("location");
    var isnum = /^\d+$/.test(ticketNumber);

    var invalidAmount =$('.invalidRemoveAmount').text().length;
    var invalidTicketNumber =$('.invalidRemoveTicketNumber').text().length;
    var invalidPerson= $('.invalidOutPerson').text().length;

    if (categoryPicked.length==0 || itemPicked.length==0 || $('.ticketNumber').val().length==0 || $('.outPerson').val().length==0){
        
        alert("Invalid Remove!");
        
    }else if(invalidAmount>0 || invalidTicketNumber>0 || invalidPerson>0){
        
        alert("Invalid Remove! Please Check Incorrect Field!");

    }else{
        
        $.ajax({
            type: 'post',
            url: 'request/addOutRecord.php',
            data: {"category":categoryPicked,"item":itemPicked,"amount":removeAmount,"ticket_number":ticketNumber,"person":outPerson,"location":location,"comments":comments},
            dataType: 'json'
        });

        $.ajax({
            type: 'post',
            url: 'request/updateItemAmount.php',
            data: {"item":itemPicked,"amount":updatedAmount,"location":location},
            dataType: 'json',
            success: function(result) {
                alert("Successfully Removed");
                resetRemove();
            }
        })
    }


});


// function to check remove number is less than current inventory amount
function checkRemoveNumber(){
    var removeAmount = parseInt($('.removeNum').val());
    $('.invalidRemoveAmount').text("");
    if (currentAmount<removeAmount){
        $('.invalidRemoveAmount').text("Invalid Amount!");
    }
}

// function to check ticket number is number and 7 digits
function checkRemoveTicketNumber(){
    var ticketNumber = $('.ticketNumber').val();
    var isnum = /^\d+$/.test(ticketNumber);

    $('.invalidRemoveTicketNumber').text("");
    
    if (String($('.ticketNumber').val()).length!=7){
        $('.invalidRemoveTicketNumber').text("Please enter 7 digits number!");
    }
    if(!isnum){
        $('.invalidRemoveTicketNumber').text("Invalid Ticket Number!");
    }
}

// function to check out person soeid is in correct format
function checkOutPerson(){
    var outPerson = $('.outPerson').val();
    
    letter1 = outPerson.substring(0, 1);
    letter2 = outPerson.substring(1, 2);
    letter3to7 = outPerson.substring(2, 7);

    var isnum = /^\d+$/.test(letter3to7);

    $('.invalidOutPerson').text("");

    if (isLetter(letter1)!=true || isLetter(letter2)!= true){
        $('.invalidOutPerson').text("first two digis are letters!");
    }

    if(!isnum){
        $('.invalidOutPerson').text("last five digits are numbers!");
    }

    if (outPerson.length!=7){
        $('.invalidOutPerson').text("Invalid ID");
    }

}
 
// function to return true if it is letter    
function isLetter(str) {
    if(str.match(/^[A-Za-z]+$/)){
        return true;
    }else{
        return false;
    }
}


// function to resetRemove when success remove items
function resetRemove(){
    categoryPicked = '';
    itemPicked = '';
    currentAmount = '';
    $('.categoryBox').removeClass(addclass);
    $('.itemList').empty();
    $('.itemList').append('<h2 class="form_name">Item Name:</h2>');
    $('.currentAmount').text(currentAmount);
    $('.ticketNumber').val("");
    $('.outPerson').val("");
    $('.comments').val("");
}

// function to increase remove number
function addRemoveNumber(){
    var num = +$(".removeNum").val() + 1;
    $(".removeNum").val(num);
}

// function to decrease remove number
function deleteRemoveNumber(){
    var num = +$(".removeNum").val() - 1;
    if (num>=1){
        $(".removeNum").val(num);
    }
}