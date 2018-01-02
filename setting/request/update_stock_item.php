<?php

require_once('../../private/initialize.php');

if(is_post_request()) {
	$name = $_REQUEST['item_name'];
	$location = $_REQUEST['item_location'];
	$id = $_REQUEST['item_id'];
	$category = $_REQUEST['item_category'];
	
	for ($i = 0; $i < count($name); $i++) {
		
		if($id[$i]=='new'){
			
			insert_item($category,$name[$i],$location);
		
		}else{
    		
    		update_item($id[$i],$name[$i]);
    	
    	}
	}
	


}

?>