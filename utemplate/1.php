<?php 
session_start();
include('../config.php');
include('../function.php');

$id = $_GET['id'];
// $sql = "select categoires.name ";
// $sql = "select products.name, products.supplier, products.unit_price,products.quantity, products.description,
// categories.name from products
// inner join categories on products.category_id = categories.id where products.category_id ={$id}";
$sql = "select categories.name,
products.name, products.supplier,products.unit_price,products.quantity, products.description from categories
inner join products on categories.id = products.category_id where categories.id ={$id}";
$result = query($sql);
?>
<?php include('../utemplate/header.php');?>
<h1 class="text text-success text-sm">Category</h1>
<hr>
<table class="table table-bordered table-sm">
    <thead>
        <tr>
            <th>#</th>
            <th>products</th>
            <th>supplier</th>
            <th>unit_price</th>
            <th>quantity</th>
            <!-- <th>categories</th> -->
        </tr>
    </thead>
    <tbody>
           <?php 
               $i =1;
            ?> 
        <?php foreach($result as $p){?>
            <tr>
                <td><?php echo $i++; ?></td>
                <td><?php echo $p['name']; ?></td>
                <td><?php echo $p['supplier']; ?></td>
                <td>$<?php echo $p['unit_price']; ?></td>
                <td><?php echo $p['quantity']; ?></td>
            
            </tr>
        <?php }?>
    </tbody>
</table>

<?php include('../utemplate/footer.php');?>