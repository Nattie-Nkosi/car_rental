<?php

session_start();

include("../includes/db.php");

if(!isset($_SESSION['customer_email'])){

echo "<script> window.open('../../checkout.php','_self'); </script>";

}

if(!isset($_SERVER['HTTP_REFERER'])){
	
echo "<script> window.open('../../checkout.php','_self'); </script>";
	
}

if(isset($_SERVER['HTTP_REFERER'])){
	
$random_id = mysqli_real_escape_string($con, $_POST['random_id']);
	
$http_referer = substr($_SERVER['HTTP_REFERER'], strpos($_SERVER['HTTP_REFERER'], "?") + 1);

if($http_referer == "insert_product" or $http_referer == "edit_product=$random_id" or $http_referer == "insert_bundle" or $http_referer == "edit_bundle=$random_id"){

?>

<?php

$random_id = mysqli_real_escape_string($con, $_POST['random_id']);

$variation_id = mysqli_real_escape_string($con, $_POST['variation_id']);

$delete_product_variation = "delete from product_variations where product_id='$random_id' and variation_id='$variation_id'";

$run_product_variation = mysqli_query($con,$delete_product_variation);

if($run_product_variation){

$delete_variations_meta = "delete from variations_meta where variation_id='$variation_id'";

$run_variations_meta = mysqli_query($con,$delete_variations_meta);

$delete_product_stock = "delete from products_stock where product_id='$random_id' and variation_id='$variation_id'";
	
$run_delete_product_stock = mysqli_query($con,$delete_product_stock);
	
}

?>

<?php } } ?>