<?php

require_once('../../private/initialize.php');

if(is_post_request()) {
	$item = $_POST['item'];
	$location = $_POST['location'];
	
	echo get_item_amount($item,$location);
}

?>


