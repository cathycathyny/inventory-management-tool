<?php

  // show the location database
  function show_all_location() {
    global $db;

    $sql = "SELECT * FROM `locations`";
    $result = mysqli_query($db, $sql);
    confirm_result_set($result);
    return $result;
  }

  //clear all locations
  function clear_location() {
  	global $db;
  	
  	$sql = "DELETE FROM locations";
  	$result = mysqli_query($db, $sql);
  }

  //insert location name
  function insert_location($id,$name){
  	global $db;
  	
  	$sql = "INSERT INTO `locations`(`location_id`, `location_name`) VALUES ($id,'$name')";
  	
  	$result = mysqli_query($db, $sql);
  }

  //remove location from the stock db
  function remove_location($id){
    global $db;
    
    $sql = "DELETE FROM `stock` WHERE `item_location`='$id'";
    $result = mysqli_query($db, $sql);
  }


  // show the category database
  function show_all_category() {
    global $db;

    $sql = "SELECT * FROM `category`";
    $result = mysqli_query($db, $sql);
    confirm_result_set($result);
    return $result;
  }

  //clear all category
  function clear_category() {
    global $db;
    
    $sql = "DELETE FROM category";
    $result = mysqli_query($db, $sql);
  }

  //insert category name
  function insert_category($id,$name){
    global $db;
    
    $sql = "INSERT INTO `category`(`category_id`, `category_name`) VALUES ($id,'$name')";
    
    $result = mysqli_query($db, $sql);
  }

  //insert new item
  function insert_item($category,$name,$location){
    global $db;
    
    $sql = "INSERT INTO `stock`( `item_category`, `item_name`, `item_location`) VALUES ('$category','$name','$location')";
    
    $result = mysqli_query($db, $sql);
  }

  function update_item($id,$name){
    global $db;
    
    $sql = "UPDATE `stock` SET `item_name`='$name' WHERE `item_id`=$id";
    
    $result = mysqli_query($db, $sql);
  }

  function show_all_item_by_location($location,$category) {
    global $db;

    $sql = "SELECT * FROM `stock` WHERE `item_location`=$location AND `item_category`='$category'";
    $result = mysqli_query($db, $sql);
    confirm_result_set($result);
    return $result;
  }

  function remove_item_from_stock($id){
    global $db;
    
    $sql = "DELETE FROM `stock` WHERE `item_id`='$id'";
    
    $result = mysqli_query($db, $sql);
    confirm_result_set($result);
    
    return $result;
  }


  function add_new_location_to_stock($num){
    global $db;

    $sql = "INSERT INTO `stock`( `item_category`, `item_name`, `item_location`) SELECT item_category,item_name,'$num' FROM `default_item`";

    $result = mysqli_query($db, $sql);
    confirm_result_set($result);
    return $result;
  }

  function check_exists($num){
    global $db;

    $sql = "SELECT * FROM `stock` WHERE `item_location`=$num";

    $result = mysqli_query($db, $sql);
    confirm_result_set($result);
    
    if ($result->num_rows > 0){
      return TRUE;
    }
      return FALSE;
  }

  function update_category_name($old,$new){
    global $db;
    
    $sql = "UPDATE `stock` SET `item_category`='$new' WHERE `item_category`='$old'";
    
    $result = mysqli_query($db, $sql);
  }

?>