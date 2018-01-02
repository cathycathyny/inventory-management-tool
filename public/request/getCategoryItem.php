<?php

require_once('../../private/initialize.php');

if(is_post_request()) {
	$category = $_POST['name'];
	$location = $_POST['location'];
	find_items_by_categories($location,$category);
}

?>


