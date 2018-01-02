<?php

require_once('../../private/initialize.php');

if(is_post_request()) {
	$location = $_POST['location'];
	$category = $_POST['category'];
	
	filter_inventory($location,$category);
}

?>