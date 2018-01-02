<?php

require_once('../../private/initialize.php');

if(is_post_request()) {

	$myArray = $_REQUEST['location_name'];
	
	clear_location();

	for ($i = 0; $i < count($myArray); $i++) {
    	insert_location($i+1,$myArray[$i]);
    	$exits = check_exists($i+1);
    	if(!$exits){
    		add_new_location_to_stock($i+1);
    	}
	}
	
	

}

?>