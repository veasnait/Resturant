<?php 
session_start();
include('../config.php');
include('../function.php');
is_login();
$page = 1;
$active =1;
if(isset($_GET['page']))
{
    $page = $_GET['page'];
    $active = $page;
}
$sql = "select orders.pname, orders.amount, orders.description, orders.timeorder,
register.username, register.sex, register.phone, register.address from orders
inner join register on orders.re_id=register.id limit ?,".ROW ;
$sql1 = "select orders.pname, orders.amount, orders.description, orders.timeorder,
register.username, register.sex, register.phone, register.address from orders
inner join register on orders.re_id=register.id" ;
$result = paginate($page ,$sql);
?>
<?php include('../templates/header.php');?>
<h1 class="text text-success text-sm">Order Detail</h1>
<hr>
<table class="table table-bordered table-sm">
    <thead>
        <tr>
            <th>#</th>
            <th>Pro_Name</th>
            <th>Amount</th>
            <th>Description</th>
            <th>Timeorder</th>
            <th>Username</th>
            <th>Sex</th>
            <th>Phone</th>
            <th>Address</th>
        </tr>
    </thead>
    <tbody>
        <?php 
            $pagex = @$_GET['page'];
            if(!$pagex)
            {
                $pagex = 1;
            }
            $i = ROW * ($pagex-1) + 1;
        ?> 
        <?php foreach($result as $p){?>
            <tr>
                <td><?php echo $i++; ?></td>
                <td><?php echo $p['pname']; ?></td>
                <td><?php echo $p['amount']; ?></td>
                <td><?php echo $p['description']; ?></td>
                <td><?php echo $p['timeorder']; ?></td>
                <td><?php echo $p['username']; ?></td>
                <td><?php echo $p['sex']; ?></td>
                <td><?php echo $p['phone']; ?></td>
                <td><?php echo $p['address']; ?></td>
                
            </tr>
        <?php }?>
    </tbody>
</table>
    <div class="d-flex justify-content-between"> 
            <p>
                    Total: <?php  echo mysqli_num_rows($result);?> records  
            </p>
            <?php links($sql1, $active);?>   
    </div> 
<?php include('../templates/footer.php');?>