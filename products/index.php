<?php session_start();?>
<?php
    include('../config.php');
    include('../function.php');
    include("../templates/header.php");
    is_login();
    $page = 1;
    $active = 1;
    $search = null;
    if(isset($_GET['page']))
    {
        $page = $_GET['page'];
        $active = $page;
    }

    $sql = "select products.*, categories.name as cname from products
    left join categories on products.category_id=categories.id limit ?, ". ROW;
    $sql1 = "select products.*, categories.name as cname from products
    left join categories on products.category_id=categories.id";


    if(isset($_GET['q']))
    {
        $q = $_GET['q'];
        $search = $q;
        $sql = "select products.*, categories.name as cname from products
        left join categories on products.category_id=categories.id 
        where products.name like '%{$q}%' or products.supplier like '%{$q}%' or categories.name like'%{$q}%' limit ?, " .ROW;
        $sql1 = "select products.*, categories.name as cname from products
        left join categories on products.category_id=categories.id 
        where products.name like '%{$q}%' or products.supplier like '%{$q}%' or categories.name like'%{$q}%'"; 
    }
    
    $products = paginate($page,$sql);
?>
<h1 class="text text-success text-sm">Products</h1>
   
    <div class="d-flex justify-content-between mb-2">
        <div>
            <a href="create.php" class="btn btn-success btn=sm">
                Additem
            </a>
        </div>
        <div>
            <form >
                <input type="text" name='q' placeholder="search..."> <button>search</button>
            </form>
        </div>
    </div>
    <?php include"../sms.php";?>

<table class="table table-bordered table-sm">
    <thead>
        <tr>
            <th>#</th>
            <th>Photo</th>
            <th>Name</th>
            <th>Supplier</th>
            <th>Quantity</th>
            <th>unit_price</th>
            <th>Catagory</th>
            <th>action</th>
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
        <?php foreach($products as $p){?>
            <tr>
                <td><?php echo $i++; ?></td>
                <td>
                    <img src="<?php echo BURL.$p['photo'];?>" alt="" width="40">
                </td>
                <td>
                    <a href="detail.php?id=<?php echo $p['id'];?>">
                        <?php echo $p['name']; ?>
                    </a>
                </td>
                <td><?php echo $p['supplier']; ?></td>
                <td><?php echo $p['quantity']; ?></td>
                <td>$<?php echo $p['unit_price']; ?></td>
                <td><?php echo $p['cname']; ?></td>
               

                <td>
                    <a href="delete.php?id=<?php echo $p['id'];?> " onclick="return confirm('Do you want to delete?')"
                    class="btn btn-danger btn-sm">Delete</a>
                    
                </td>
            </tr>
        <?php }?>
    </tbody>
</table>
    <p>
        Total: <?php  echo mysqli_num_rows($products);?>  records
    </p>
    <?php links($sql1, $active, $search);?>
<?php include("../templates/footer.php");?>