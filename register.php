<?php
include('config.php');
include('function.php');
$active = 1;
$page = 1;
if(isset($_GET['page']))
{
    $page = $_GET['page'];
    $active = $page;
} 
$sql = "select * From register where active = 1 limit ?,".ROW;
$sql1 = "select * from register where active = 1";
$result = paginate($page ,$sql);
if(isset($_GET['name']))
{
    $id = $_GET['id'];
    $sql = "delete from register where id ={$id}";
    $re  = non_query($sql);
    if($re)
    {
        $_SESSION['success'] ="Data has beened to delete";
    }else
    {
        $_SESSION['fail'] ="Fial to delete data.please check again.";
    } 
    header('location:register.php');

}
?>

<?php include('templates/header.php');?>
<div class="container mt-3">
<h3 class="text text-success text-sm">Register</h3>
<hr>
<table class="table table-bordered table-sm">
    <thead>
        <tr>
            <th>id</th>
            <th>Fname</th>
            <th>Lname</th>
            <th>Sex</th>
            <th>Username</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Time_Create</th>
            <!-- <th>Productid</th> -->
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php 
        ?>
        <!-- <?php 
            // $pagex = @$_GET['page'];
            // if(!$pagex)
            // {
            //     $pagex = 1;
            // }
            // $i = ROW * ($pagex-1) + 1;
        ?> -->
        <?php foreach ($result As $C) {?>
            <tr>
                <td><?php echo $C['id'];?></td>
                <td><?php echo $C['fname'];?></td>
                <td><?php echo $C['lname'];?></td>
                <td><?php echo $C['sex'];?></td>
                <td><?php echo $C['username'];?></td>
                <td><?php echo $C['phone'];?></td>
                <td><?php echo $C['address'];?></td>
                <td><?php echo $C['time_create'];?></td>
                <!-- <td><?php echo $C['Pro_id'];?></td> -->
                <td>
                    <a href="?name=delete&id=<?php echo $C['id'];?>"onclick="return confirm('Do you want to delete?')"
                     class="btn btn-danger btn-sm"> Delete </a>
                </td>

            </tr>
        <?php }?>
    </tbody>
</table>
</div>
<div class="d-flex justify-content-between"> 
    <p>
        Total: <?php  echo mysqli_num_rows($result);?> records 
    </p>
        <?php links($sql1, $active);?> 
</div> 
<?php include('templates/footer.php');?>