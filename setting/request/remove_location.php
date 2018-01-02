<?php

require_once('../../private/initialize.php');

if(is_post_request()) {
	$id = $_REQUEST['location_id'];
	
	remove_location($id);
}

?>