<?php 
session_start();
include('../config.php');
include('../function.php');
isuser_login();

    $id = $_GET['id'];
    $sql = "SELECT * FROM products WHERE id ={$id}";
    $cat = query($sql);
    $cat = mysqli_fetch_array($cat);
?>
  <?php 
        if(isset($_POST['btn']))
        {
            $pname = $_POST['pname'];
            $amount = $_POST['amount'];
            $reid = $_POST['customerid'];
            $Desc = $_POST['description'];
            $sql = "INSERT INTO  orders (pname, amount, re_id, description) VALUES ('{$pname}','{$amount}','{$reid}','{$Desc}')";
            $result = non_query($sql);
            if($result)
            {
                $_SESSION['success'] = 'order has been success!';
            }else
            {
                $_SESSION['fail'] = 'order fail.please check your information  again';
            }
        }
    ?>
<?php include('../utemplate/header.php');?>
<h1>Order food</h1>
    <p>
        <a href="<?php echo BURL;?>" class="btn btn-success btn-sm">Back</a>
    </p>
        <hr>
        <form method="POST">
            <div class="row">
                <div class="col-7">
                    <?php  include('../sms.php');?>
                    <div class="form-group row">
                        <label for="pname" class="col-sm-3">Product Name</label>
                        <div class="col-sm-9">
                            <input type="#" readonly="readonly" class="form-control" id="pname" name="pname" value="<?php echo $cat['name'];?>" require>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="amount" class="col-sm-3">Amount<span class="text-danger">*</span></label>
                        <div class="col-sm-9">
                            <input type="#" class="form-control" id="amount" name="amount" require>
                        </div>
                    </div>
                   
                    <div class="form-group row">
                        <label for="customerid" class="col-sm-3">Customer id<span class="text-danger">*</span></label>
                        <div class="col-sm-9">
                            <input type="#"class="form-control" id="customerid" name="customerid"  require>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="description" class="col-sm-3">Description</label>
                        <div class="col-sm-9">
                            <textarea name="description" id="description" cols="30" rows="3" class="form-control"></textarea>
                        </div>
                    </div>
                   

                    <div class="form-group row">
                        <label class="col-sm-3"></label>
                        <div class="col-sm-9">
                            <button class="btn-success btn-sm" name="btn">Order</button>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="customerid" class="col-sm-3">បញ្ជាក់<span class="text-danger">*</span></label>
                        <div class="col-sm-9">
                           <p​​ style="color:red">សម្រាប់ ​Costomer id​​ សូមបញ្ជូននូវលេខកូដដែលក្រុមហ៊ុនយើងខ្ញុំបានផ្ញើជូនអតិឋិជនតាមរយៈ Email ឱ្យបានត្រឹមត្រូវ </p​​>
                        </div>
                    </div>

                </div>
            </div>
        </form>
<?php include('../utemplate/footer.php');?>