<?php session_start();?>
<?php
    include('config.php');
    include('function.php');
    $sql = "select products.*, categories.name as cname from products
    left join categories on products.category_id=categories.id where products.id=".$_GET['id'];
    $pro = query($sql);
    $pro = mysqli_fetch_array($pro);

?>
<?php include('utemplate/header.php');?>

<h1>Product Detail</h1>
<p>
    <a href="index.php" class="btn btn-success btn-sm">Back</a>
</p>
<hr>
<form method="POST" enctype="multipart/form-data">
<?php include"sms.php";?>
    <div class="row">
        <div class="col">
            <div class="form-group row">
                <label class='col-3'for='name'>Name<span class='text-danger'></span></label>
                <div class="col-9">
                    :<?php echo $pro['name']; ?>
                </div>
            </div>
            <div class="form-group row">
                <label class='col-3'>Supplier</label>
                <div class="col-9">
                    :<?php echo $pro['supplier']; ?>
                </div>
            </div>
            <div class="form-group row">
                <label class='col-3'for='quantity'>Quantity</label>
                <div class="col-9">
                :<?php echo $pro['quantity']; ?>
                </div>
            </div>
            <div class="form-group row">
                <label class='col-3'for='price'>Price</label>
                <div class="col-9">
                :$<?php echo $pro['unit_price']; ?>
                </div>
            </div>
           
        </div>
        <div class='col'>
            <div class="form-group row">
                <label class='col-3'for='category'> Category </label>
                <div class="col-9">
                :<?php echo $pro['cname']; ?>
                </div>
            </div>
            <div class="form-group row">
                <label class='col-3'> Photo </label>
                <div class="col-9">
                <img src="<?php echo BURL.$pro['photo'];?>" alt="" width="120">
                </div>
            </div>

        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <?php echo html_entity_decode($pro['description']); ?>
        </div>
    </div>
</form>
<?php include('utemplate/footer.php');?>


