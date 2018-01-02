<?php require_once('../../private/initialize.php'); ?>
<h1 class="page_title">Check Inventory</h1>
<div class="inventory">
	<div class="filter">
		<h2 class="filterName">Filter:</h2>
		<?php $category_set = find_all_categories();
			$category = isset($_GET['category']) ? $_GET['category'] : '';
		?>
		<?php while($categoryName = mysqli_fetch_assoc($category_set)) {
	    	$name = $categoryName['category_name'];
	    	if($name ==$category){
	    		echo "<p class='filterBox clicked'>".$name."</p>";
	    	}else{
	    		echo "<p class='filterBox'>".$name."</p>";
	    	}
	    		
	   	} ?>
	    	
    <?phpmysqli_free_result($category_set);?>
	</div>
	<div class="filterResult">
		<?php

		$id = isset($_GET['id']) ? $_GET['id'] : '1';
		
		if($category==''){
			$category_set = show_all_inventory($id);
		}else{
			$category_set = category_inventory($id,$category);
		}

		if ($category_set->num_rows > 0) {
		    echo "<table id='inventory_table'><tr><th>Category</th><th>Item Name</th><th>Amount</th></tr>";
		    // output data of each row
		    while($row = $category_set->fetch_assoc()) {
		        echo "<tr><td>" . $row["item_category"]. "</td><td>" . $row["item_name"]. "</td><td>" . $row["item_amount"]. "</td></tr>";
		    }
		    echo "</table>";
		} else {
		    echo "0 results";
		}
		?>
	</div>

</div>

