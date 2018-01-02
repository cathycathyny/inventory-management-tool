
<?php require_once('../../private/initialize.php'); ?>
<h1 class="page_title">Out History</h1>
<div class="inventory">
<?php 
$id = isset($_GET['id']) ? $_GET['id'] : '1';
$out_set = show_all_out_record($id);

if ($out_set->num_rows > 0) {
    echo "<table id='inventory_table'><tr><th>Category</th><th>Item Name</th><th>Date</th><th>Amount</th><th>Ticket#</th><th>Person</th><th>Comments</th></tr>";
    // output data of each row
    while($row = $out_set->fetch_assoc()) {
        echo "<tr><td>" . $row["out_category"]. "</td><td>" . $row["out_item_name"]. "</td><td>" . $row["out_date"]. "</td><td>" . $row["out_amount"]. "</td><td>" . $row["out_ticket_number"]. "</td><td>" . $row["out_person"]. "</td><td>".$row["out_comment"]. "</td></tr>";
    }
    echo "</table>";
} else {
    echo "<table id='inventory_table'><tr><th>Category</th><th>Item Name</th><th>Date</th><th>Amount</th><th>Ticket#</th><th>Person</th></tr></table>";
}

?>
</div>