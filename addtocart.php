<?php 
include("connect.php");
$p_id = $_POST['p_id'];
$p_name = $_POST['p_name'];
$quantity = $_POST['quantity'];
$price = $_POST['price'];
$description = $_POST['description'];
$created_at = $_POST['created_at'];
$updated_at = $_POST['updated_at'];
$add_by_user = $_POST['add_by_user'];

$sql = "INSERT INTO product(`p_name`, `quantity`, `price`, `description`, `add_by_user`) Values ('$p_name', '$quantity','$price','$description','$add_by_user')";
$result = mysqli_query($conn, $sql);

return $result;
?>