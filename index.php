<?php
session_start();
include('config.php');
include('function.php');

    $page = 1;
    $active = 1;
    $search = null;
    if(isset($_GET['page']))
    {
        $page = $_GET['page'];
        $active = $page;
    }

    $sql = "select products.*, categories.name as cname from products
    left join categories on products.category_id=categories.id limit ?, ".ROW;
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
    include('utemplate/header.php');
?>

    <div class="d-flex justify-content-between mb-2">
        <div>
        <h1 class="text text-success text-sm">Products</h1>
        </div>
        <div>
            <form >
                <input type="text" name='q' placeholder="search..."> <button>search</button>
            </form>
        </div>
    </div>
    
<table class="table table-bordered table-sm">
    <thead>
        <tr>
            <th>#</th>
            <th>Photo</th>
            <th>Name</th>
            <!-- <th>Supplier</th> -->
            <th>Quantity</th>
            <th>unit_price</th>
            <th>Category</th>
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
                <!-- <td><?php echo $p['supplier']; ?></td> -->
                <td><?php echo $p['quantity']; ?></td>
                <td>$<?php echo $p['unit_price']; ?></td>
                <td><?php echo $p['cname']; ?></td>
                <td>
                    <a href="order/order.php?id=<?php echo $p['id'];?> " onclick="return confirm('Are you sure want to order?')"
                    class="btn btn-success btn-sm">order</a>
                    <!-- <a href="edit.php?id=<?php echo $p['id'];?>" class="btn btn-success btn-sm">Edit</a> -->
                </td>
            </tr>
        <?php }?>
    </tbody>
</table>
    <div class="d-flex justify-content-between"> 
        <p>
            Total: <?php  echo mysqli_num_rows($products);?>  records
        </p>
        <?php links($sql1, $active, $search);?>
    </div> 

</div>

<?php  include('utemplate/footer.php')?>