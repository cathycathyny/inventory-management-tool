<?php

require_once('../../private/initialize.php');

if(is_post_request()) {

  $item = $_POST['item'];
  $amount = $_POST['amount'];
  $location = $_POST['location'];

  update_amount($item,$amount,$location);
  //redirect_to(url_for('/staff/subjects/show.php?id=' . $new_id));

} else {
  //redirect_to(url_for('index.php'));
}

?>
