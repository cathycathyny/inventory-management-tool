function showResult(str){
	e.preventDefault();
	$.ajax({
        type: 'post',
        url: 'request/searchFromInventory.php',
        data: "str="+ str,
        dataType: 'json',
        success: function(result) {
        	console.log(result);
        }
    });
}
