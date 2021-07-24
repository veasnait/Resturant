<?php session_start();?>
<?php
    include('../config.php');
    include('../function.php');
    is_login();
    $cats = query('select * from categories where active=1');
    if(isset($_POST['btn']))
    {
        $name = $_POST['name'];
        $sup = $_POST['supplier'];
        $qty = $_POST['quantity'];
        $price = $_POST['price'];
        $cat = $_POST['category'];
        $desc = $_POST['description'];
        $desc =htmlspecialchars($desc); //convert text to html charector
        $photo = "/uploads/products/default.png";
        /// upload befor insert data 
        if(isset($_FILES['photo']))
        {
            $file = $_FILES['photo'];
            $path = UPLOAD_PATH."/products/";
            $n = upload($file, $path);
            if($n!=false)
            {
                $photo = "/uploads/products/". $n;
            }
        }
        $sql = "insert into products(name, supplier, quantity, unit_price, category_id,description, photo) values(
        '{$name}','{$sup}',{$qty},{$price},{$cat},'{$desc}','{$photo}')";
        $re = non_query($sql);
        if($re)
        {
           $_SESSION['success'] = 'data has been saved';

        }else 
        {
            $_SESSION['fail'] = 'data can not  save to database';   
        }
    }
?>
<?php include('../templates/header.php');?>

<h1>Create Product</h1>
<p>
    <a href="index.php" class="btn btn-success btn-sm">Back</a>
</p>
<hr>
<form method="POST" enctype="multipart/form-data">
<?php include"../sms.php";?>
    <div class="row">
        <div class="col">
            <div class="form-group row">
                <label class='col-3'for='name'>Name<span class='text-danger'></span></label>
                <div class="col-9">
                    <input type='text' class='form-control' id='name' name='name' require autofocus>
                </div>
            </div>
            <div class="form-group row">
                <label class='col-3'for='supplier'>Supplier</label>
                <div class="col-9">
                    <input type='text' class='form-control' id='supplier' name='supplier'>
                </div>
            </div>
            <div class="form-group row">
                <label class='col-3'for='quantity'>Quantity</label>
                <div class="col-9">
                    <input type='text' class='form-control' id='quantity' name='quantity'>
                </div>
            </div>
            <div class="form-group row">
                <label class='col-3'for='price'>Price</label>
                <div class="col-9">
                    <input type='text' class='form-control' id='price' name='price'>
                </div>
            </div>
           
        </div>
        <div class='col'>
            <div class="form-group row">
                <label class='col-3'for='category'> Category </label>
                <div class="col-9">
                    <select name="category" id="category" class="form-control chosen-select" require>
                        <option >Choose...</option>
                        <?php foreach ($cats as $c){?>
                            <option value="<?php echo $c['id'];?>"><?php echo $c['name'];?></option>
                        <?php }?>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <label class='col-3'for="photo"> Photo </label>
                <div class="col-9">
                    <input type="file" class="form-control" id="photo" accept="image/*" name="photo"onchange="preview(event)">
                    <img src="" alt="" id="img" width="120">
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <textarea name='description' id='description' cols='30' rows='10' class='form-control'></textarea>
            <p class="mt-2">
                <button class="btn btn-success" name='btn'>Save</button>
            </p>
        </div>
    </div>
</form>
<?php include('../templates/footer.php');?>