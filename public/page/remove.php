<?php require_once('../../private/initialize.php'); ?>
<?php $category_set = find_all_categories();?>

<h1 class="page_title">Remove Item</h1>
<div class="editForm">
  <h2 class="inventory_number">#In Stock: <span class="currentAmount"></span></h2>
  <div class="formList">
    <h2 class="form_name">Category:</h2>
    <?php while($category = mysqli_fetch_assoc($category_set)) { ?>
    <div class="categoryBox">
      <?php $name = $category['category_name'] ?>
        <!-- <img src="<?php echo 'img/categoryimg/' . strtolower($name) . '.png'; ?>"/> -->
        <p><?php echo h($name); ?></p>
    </div>
      <?php } ?>

    <?phpmysqli_free_result($category_set);?>
  </div>
          
  <div class="itemList">
    <h2 class="form_name">Item Name:</h2>
  </div>
      
  <div class="removeForm">
      <h2 class="form_num">Remove Amount:</h2>
      <button class="minusNumber" onclick="deleteRemoveNumber();"><i class="fa fa-minus fa-2x" aria-hidden="true"></i></button>
      <input type="number" name="amount" class="removeNum" value="1" min='1' onchange="checkRemoveNumber()">
      <button class="addNumber" onclick="addRemoveNumber();"><i class="fa fa-plus fa-2x" aria-hidden="true"></i></button>
      <span class="invalidRemoveAmount" style="color: red;"></span></br></br>
      
      <h2 class="form_num">Ticket Number:</h2>
      <input type="text" name="ticket_number" class="ticketNumber" onchange="checkRemoveTicketNumber()" maxlength="7">
      <span class="invalidRemoveTicketNumber" style="color: red;"></span></br></br>

      <h2 class="form_num">Handle Person:</h2>
      <input type="text" name="handle_person" class="outPerson" onchange="checkOutPerson()" maxlength="7">
      <span class="invalidOutPerson" style="color: red;"></span></br></br>

      <h2 class="form_num">Comments:</h2>
      <input type="text" name="item_comments" class="comments">
  </div>


  <button class="removeButton">Remove</button>
</div>