<?php require_once('../private/initialize.php'); ?>

<?php $page_title = 'Inventory Manager'; ?>
<?php include(SHARED_PATH . '/header.php'); ?>
<?php include(SHARED_PATH . '/nav.php'); ?>
<?php require_once('../private/initialize.php'); ?>

<?php
    $id = isset($_GET['id']) ? $_GET['id'] : '1';
    $location = find_location_by_id($id);
?>

<?php

        echo "<div class='select'>";
        $location_set = show_all_locations();
        if ($location_set->num_rows > 0) {
            echo "<select name='page' class='selectLocation' onchange='loadLocation(this.value)'>";
            // output data of each row
            while($row = $location_set->fetch_assoc()) {
                echo $id;
                if ($id == $row["location_id"]){
                    echo "<option value='" .$row["location_id"] ."' selected='selected'>" . $row["location_name"] ."</option>";
                }else{
                    echo "<option value='" .$row["location_id"] ."'>" . $row["location_name"] ."</option>";
                }
            }
            echo "</select>";
        } else {
            echo "0 results";
        }
        echo "</div>";
    ?>

<div id="page-content">
    


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

</div>


<?php include(SHARED_PATH . '/footer.php'); ?>		