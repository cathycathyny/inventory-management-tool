<?php require_once('../../private/initialize.php'); ?>
<h1 class="page_title">Exist Item Setting</h1>
<div class="db_table">
<?php
	$location_set = show_all_location();
	if ($location_set->num_rows > 0) {
		while($id = $location_set->fetch_assoc()) {
		    echo "<p class='filterBox' id='".$id["location_id"]."'>" . $id["location_name"]. "</p>";	
		}

	}
?>

<?php
	$location_set = show_all_location();
	if ($location_set->num_rows > 0) {
		while($id = $location_set->fetch_assoc()) {
			      

			      $category_set = show_all_category();   

				if ($category_set->num_rows > 0) {
					echo "<div id='edit' class='".$id["location_id"]." hide'>";

				    while($category = $category_set->fetch_assoc()) {
				    	echo "<table id='items_table'>";
				    	//echo "<td class='hide'>" . $id["location_id"]. "</td>";
				    	echo "<tr id='category_row'><th>".$category["category_name"]."</th><th><span class='item-save'><i class='fa fa-check fa-1x'></i></span></th><td class='hide'>" . $id["location_id"]. "</td></tr>";

						$item_set = show_all_item_by_location($id["location_id"],$category["category_name"]);

						if ($item_set->num_rows > 0) {

							echo "<tr><th>Item Name</th><th><i id='item-add' class='fa fa-plus fa-1x'></i></th></tr>";

							while($row = $item_set->fetch_assoc()) {
								echo "<tr><td contenteditable='true'>" . $row["item_name"]. "</td><td><span class='item-remove'><i class='fa fa-minus fa-1x'></i></span></td><td class='hide'>". $row["item_id"]."</td></tr>";
							}
						}else{
							echo "<tr><th>Item Name</th><th><i id='item-add' class='fa fa-plus fa-1x'></i></th></tr>";
						}

				    }
				    echo "</table>";
				    echo "</div>";

				} else {
				    echo "0 results";
				}
		}

	}



?>

</div>

