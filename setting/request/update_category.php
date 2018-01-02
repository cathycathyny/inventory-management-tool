<?php

require_once('../../private/initialize.php');

if(is_post_request()) {
	//$location_name = $_POST['location_name'];
	$myArray = $_REQUEST['category_name'];
	$oldName = $_REQUEST['old_name'];
	
	clear_category();

	for ($i = 0; $i < count($myArray); $i++) {
    	insert_category($i+1,$myArray[$i]);

    	if($myArray[$i]!=$oldName[$i]){
    		update_category_name($oldName[$i],$myArray[$i]);
    	}
	}
	


}

?>