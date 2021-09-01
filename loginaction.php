<?php
include('connect.php');
session_start();
$email=$_REQUEST['email'];
$pswd=$_REQUEST['pwd'];
$sql = "SELECT * FROM `user` WHERE email='$email' AND password='$pswd'";
$data = mysqli_query($conn, $sql);
$total = mysqli_num_rows($data);
if ($total>0) {
	$result=mysqli_fetch_assoc($data);
	$_SESSION['id']=$result['id'];
	// header('location:index2.php');
	echo "Success";
}else{
	echo "login failure";
}


?>