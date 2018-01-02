<?php require_once('../../private/initialize.php'); ?>
<h1 class="page_title">Category Setting</h1>
<!-- <span class="table-add"><i class="fa fa-plus fa-2x"></i></span>
<span class="table-remove"><i class="fa fa-minus fa-2x"></i></span>
<button class="category-save">Save</button> -->
<div class="db_table">
		<?php

		$category_set = show_all_category();
		$number = 1;

		if ($category_set->num_rows > 0) {
		    echo "<table id='category_table'><tr><th>Category Id</th><th>Category Name</th><th><span class='category-add'><i class='fa fa-plus fa-1x'></i></span></th><th><span class='category-save'><i class='fa fa-check fa-1x'></i></span></th></tr>";
		    // output data of each row
		    while($row = $category_set->fetch_assoc()) {
		    	if ($number>11){
		        echo "<tr><td>" . $number. "</td><td contenteditable='true'>" . $row["category_name"]. "</td><td colspan='2'><span class='category-remove'><i class='fa fa-minus fa-1x'></i></span></td><td class='hide'>". $row["category_name"]."</td></tr>";
		        }else{
		        	echo "<tr><td>" . $number. "</td><td contenteditable='true'>" . $row["category_name"]. "</td><td colspan='2'></td></tr>";
		        }
		        $number = $number+1;
		    }
		    echo "</table>";
		} else {
		    echo "0 results";
		}
		?>
</div>
