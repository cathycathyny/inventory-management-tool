<?php require_once('../../private/initialize.php'); ?>

<?php
$id = isset($_GET['id']) ? $_GET['id'] : '1';

$location = find_location_by_id($id);
?>


<!-- <input type="search" class="search_inventory" placeholder="Search Inventory"></input> -->
<?php $location_num_set = show_all_locations();?>
<h1 class="home_head">Overviews</h1>
<div class="location_summary">
	<?php while($row = mysqli_fetch_assoc($location_num_set)) { ?>
		<div class="location_total_devices" id="<?php echo $row["location_id"] ?>">
			<?php $location_total_devices = find_devices_number(h($row["location_id"])); ?>
	        <p class="location_name"><?php echo h($row["location_name"]) ?></p>
	        <p class="location_number"><?php echo $location_total_devices ?></p>
	        <p class="location_tag">Total Devices</p>
			
		</div>
	<?php } ?>

    <?phpmysqli_free_result($location_num_set);?>
</div>

<?php $category_set = find_all_categories(); ?>
<h1 class="home_head"><?php echo h($location['location_name']); ?> Inventory Summary</h1>
<div class="location_summary">

	<?php while($category = mysqli_fetch_assoc($category_set)) { ?>
      <div class="category_sum_box">
        <?php 
        	$category_name = $category['category_name'];
        	$total_num = find_total_number_by_category($id,h($category_name)); 
        ?>
        <!-- <img src="<?php echo 'img/categoryimg/' . strtolower($category_name) . '.png'; ?>"/> -->
        <p class="number"><?php echo $total_num; ?></p>
        <p class="name"><?php echo h($category_name); ?></p>   
      </div>
    <?php } ?>

    <?phpmysqli_free_result($category_set);?>
</div>