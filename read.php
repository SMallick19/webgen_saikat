<?php
include("connect.php");

$sql = "SELECT * FROM product";
$result = mysqli_query($conn, $sql);

$categories_arr = array();
//$categories_arr["records"] = array();
while($r=mysqli_fetch_array($result)) 
{   
    extract($r);
    $product_array = array(
        "p_id" => $p_id,
        "p_name" => $p_name,
        "quantity" => $quantity,
        "price" => $price,
        "description" => $description,
        "created_at" => $created_at,
        "updated_at" => $updated_at,     
        "add_by_user" => $add_by_user
    );

    array_push($categories_arr, $product_array);
}
http_response_code(200);
echo json_encode($categories_arr);
?>