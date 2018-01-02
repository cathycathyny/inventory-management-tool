<?php

  // show all inventory
  function show_all_inventory($location) {
    global $db;

    $sql = "SELECT * FROM `stock` WHERE `item_location`='$location'";
    $result = mysqli_query($db, $sql);
    confirm_result_set($result);
    return $result;
  }

  function category_inventory($location,$category) {
    global $db;

    $sql = "SELECT * FROM `stock` WHERE `item_location`= '$location' AND `item_category`= '$category'";
    $result = mysqli_query($db, $sql);
    confirm_result_set($result);
    return $result;
  }

  function filter_inventory($location,$category) {
    global $db;

    $sql = "SELECT * FROM `stock` WHERE `item_location`= '$location' AND `item_category`= '$category'";
    $result = mysqli_query($db, $sql);
    $items = array();

    while ($item = mysqli_fetch_assoc($result)){
      $items[] =$item;
    }
    
    echo json_encode($items);
  }

  function show_all_locations() {
    global $db;

    $sql = "SELECT * FROM locations";
    $result = mysqli_query($db, $sql);
    confirm_result_set($result);
    return $result;
  }

  function show_all_out_record($id) {
    global $db;

    $sql = "SELECT * FROM `out_record` WHERE `out_location`= '$id'";
    $result = mysqli_query($db, $sql);
    confirm_result_set($result);
    return $result;
  }

  // to show all categories
  function find_all_categories() {
    global $db;

    $sql = "SELECT * FROM category ";
    $result = mysqli_query($db, $sql);
    confirm_result_set($result);
    return $result;
  }

  function find_items_by_categories($location,$category) {
    global $db;

    $sql = "SELECT * FROM `stock` WHERE `item_location`= '$location' AND `item_category`= '$category'";
    $result = mysqli_query($db, $sql);
    $items = array();

    while ($item = mysqli_fetch_assoc($result)){
      array_push($items, $item['item_name']);
    }
    
    echo json_encode($items);
  }

  function get_item_amount($item,$location){
    global $db;

    $sql = "SELECT * FROM `stock` WHERE `item_location`= '$location' AND `item_name`= '$item'";
    $result = mysqli_query($db, $sql);
    $item = mysqli_fetch_assoc($result);
    $amount = $item['item_amount'];
    echo $amount;
  }

  function update_amount($item,$amount,$location) {
    global $db;

    $sql = "UPDATE `stock` SET item_amount='$amount' WHERE item_name='$item' AND item_location = '$location'";
    $result = mysqli_query($db, $sql);
    // For UPDATE statements, $result is true/false
    if($result) {
      echo true;
    } else {
      // INSERT failed
      echo mysqli_error($db);
      db_disconnect($db);
      exit;
    }

  }

  function add_out_record($category,$item,$date,$amount,$ticket_number,$person,$location,$comments) {
    global $db;

    // $sql = "INSERT INTO `out_record` (`out_id`, `out_category`, `out_item_name`, `out_location`, `out_date`, `out_amount`, `out_ticket_number`, `out_person`,`out_comment`) VALUES (NULL, '$category', '$item', '$location', $date', '$amount', '$ticket_number', '$person', '$comments')";
    $sql ="INSERT INTO `out_record` (`out_id`, `out_category`, `out_item_name`, `out_location`, `out_date`, `out_amount`, `out_ticket_number`, `out_person`, `out_comment`) VALUES (NULL, '$category', '$item', '$location', '$date', '$amount', '$ticket_number', '$person', '$comments');";
    $result = mysqli_query($db, $sql);

  }

  function find_location_by_id($id) {
    global $db;

    $sql = "SELECT * FROM locations ";
    $sql .= "WHERE location_id='" . $id . "'";
    $result = mysqli_query($db, $sql);
    confirm_result_set($result);
    $location = mysqli_fetch_assoc($result);
    mysqli_free_result($result);
    return $location; // returns an assoc. array
  }

  function find_devices_number($location){
    global $db;

    $sql = "SELECT SUM(item_amount) AS value_sum FROM stock WHERE item_location=$location";
    $result = mysqli_query($db, $sql);
    confirm_result_set($result);
    $row = mysqli_fetch_assoc($result); 
    $sum = $row['value_sum'];
    mysqli_free_result($result);
    return $sum;
  }

  function find_total_number_by_category($location,$category){
    global $db;

    $sql = "SELECT SUM(item_amount) AS value_sum FROM stock WHERE item_location=$location AND item_category='$category'";
    $result = mysqli_query($db, $sql);
    confirm_result_set($result);
    $row = mysqli_fetch_assoc($result); 
    $sum = $row['value_sum'];
    mysqli_free_result($result);
    return $sum;
  }

    
?>
