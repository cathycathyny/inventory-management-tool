<?php

require_once('../../private/initialize.php');

if(is_post_request()) {
	$name = $_REQUEST['item_name'];
	$position = $_REQUEST['item_position'];
	$category = $_REQUEST['item_category'];
	
	for ($i = 0; $i < count($name); $i++) {
		
		if($position[$i]=='new'){
			
			insert_item($category,$name[$i]);
		
		}else{
    		
    		update_item($position[$i],$name[$i]);
    	
    	}
	}
	


}

?>