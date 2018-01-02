
<?php require_once('../private/initialize.php'); ?>

<?php $page_title = 'Inventory Setting'; ?>
<?php include(SETTING_PATH . '/header.php'); ?>
<?php include(SETTING_PATH . '/nav.php'); ?>

<div id="page-content">
	<h1 class="page_title">Location Setting</h1>
	<div class="db_table">
			<?php

			$location_set = show_all_location();
			$number = 1;

			if ($location_set->num_rows > 0) {
			    echo "<table id='location_table'><tr><th>Location Id</th><th>Location Name</th><th><span class='table-add'><i class='fa fa-plus fa-1x'></i></span></th><th><span class='location-save'><i class='fa fa-check fa-1x'></i></span></th></tr>";
			    // output data of each row
			    while($row = $location_set->fetch_assoc()) {
			    	if ($number<5){
			        	echo "<tr><td>" . $number. "</td><td contenteditable='true'>" . $row["location_name"]. "</td><td colspan='2'></td></tr>";
			    	}else{
			        	echo "<tr><td>" . $number. "</td><td contenteditable='true'>" . $row["location_name"]. "</td><td colspan='2'><span class='table-remove'><i class='fa fa-minus fa-1x'></i></span></td></tr>";
			        }
			        $number = $number+1;

			        
			    }
			    echo "</table>";
			} else {
			    echo "0 results";
			}
			
			?>
	</div>
</div>
<?php include(SHARED_PATH . '/footer.php'); ?>		