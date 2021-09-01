<?php
include("connect.php");
$name = $_POST['name'];
$email = $_POST['email'];
$pwd = $_POST['pwd'];


$sql = "INSERT INTO `user`(`email`, `name`, `password`) VALUES ('$email', '$name', '$pwd')";
$result = mysqli_query($conn, $sql);
if($result)
{
	http_response_code(200);
	// echo json_encode(array("status" => "Success"));
	echo "Success";
	// header('location:login.php');
}
else
{
	echo "<script>alert('not done')</script>";
}
//return $result;

?>