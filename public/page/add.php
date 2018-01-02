<?php require_once('../../private/initialize.php'); ?>
<?php $category_set = find_all_categories();?>

<h1 class="page_title">Add to Inventory</h1>
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
    
  <div class="addForm">
    <h2 class="form_num">Add Amount:</h2>
    <button class="minusNumber" onclick="removeNumber();"><i class="fa fa-minus fa-2x" aria-hidden="true"></i></button>
    <input type="number" name="amount" class="addNum" value="1" min="1">
    <button class="addNumber" onclick="addNumber();"><i class="fa fa-plus fa-2x" aria-hidden="true"></i></button>
    
  </div>


  <button class="addButton">Add</button>
</div>
