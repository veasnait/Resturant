<?php 
    session_start();
    include('../config.php');
    include('../function.php');
    is_login();

$id = $_GET['id'];
$sql = "delete from products where id ={$id}";
$re  = non_query($sql);
if($re)
{
    $_SESSION['success'] ="Data has beened to delete";
}else
{
    $_SESSION['fail'] ="Fial to delete data.please check again.";
} 
header('location:index.php');

?>