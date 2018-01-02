<?php

require_once('../../private/initialize.php');

if(is_post_request()) {
  $category = $_POST['category'];
  $item = $_POST['item'];
  $date = date("Y-m-d");
  $amount = $_POST['amount'];
  $ticket_number = $_POST['ticket_number'];
  $person = $_POST['person'];
  $location = $_POST['location'];
  $comments = $_POST['comments'];
  
  //update_amount($category,$item,$amount);
  add_out_record($category,$item,$date,$amount,$ticket_number,$person,$location,$comments);

} else {
  //redirect_to(url_for('index.php'));
}

?>