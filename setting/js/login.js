$(document).on('click','#log_in_btn',function(){
	console.log('clicked');
	logIn();
});

function logIn(){

    var nm = $('#name').val();
    var pw = $('#password').val();
    
    //alert(nm + pw);

    $.ajax({
	    url: 'request/login.php',
	    type: 'post',
	    data: {'username': nm, 'password': pw},
	    success: function(data, status) {
	    	console.log(data);
	    	if(data.localeCompare("ok") == 0){
	          	$('#loginFail').hide();
	          	localStorage["admin_user_login"] = "true";
	   	        window.open("location.php", "_self");
	   	        //$('.left').remove();
	   	        //$("#page-content").load("navigate/location.php");
	        
	        }else{
	          	localStorage["admin_user_login"] = "false";
	          	$('#loginFail').show();
	          	$('#loginFail').html("Your login failed");
				//$("#mainPanel").shake(2,10,500);
			
	        }
	        
	      },
	    error: function(xhr, desc, err) {
	    	console.log(xhr);
	        console.log("Details: " + desc + "\nError:" + err);
	   	}
   	});
}