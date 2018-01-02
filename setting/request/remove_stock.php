<?php

require_once('../../private/initialize.php');

if(is_post_request()) {
	$position = $_REQUEST['item_position'];
	
	remove_item_from_stock($position);
	echo 'ok';
}

?>