<?php 
session_start();
include('config.php');
include("function.php");
$sql = "select id, name from products";
$cat = query($sql);

?>
<?php
    if(isset($_POST['btn']))
    {
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $sex = $_POST['sex'];
        $user = $_POST['username'];
        $pass = $_POST['password'];
        $encr = md5($pass);
        $phone = $_POST['phone'];
        // $proid = $_POST['Productid'];
        $add= $_POST['address'];
        $sql = "INSERT INTO  register (lname, fname, sex, username, password ,phone ,address) VALUES
        ('{$fname}','{$lname}','{$sex}','{$user}','{$encr}','{$phone}','{$add}')";
        $result = non_query($sql);
            if($result)
            {
                $_SESSION['success'] ="register is sucesssful!";
            }else
            {
                $_SESSION['fail'] ="register fail to save.please check again.";
            } 
            // header('location: userlogin.php');
        }
    ?>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>User login</title>
</head>
<body>
    <div class="container mt-3">
    <h3 class="text text-success text-sm">User Register</h3>
    <p>
        <a href="userlogin.php" class="btn btn-success btn-sm">Back</a>
    </p>
    <hr>
    <form method="POST">
            <div class="row">
                <div class="col-7">

                    <?php  include('sms.php');?>
                    <div class="form-group row">
                        <label for="name" class="col-sm-3">First Name <span  class="text-danger">*</span></label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="fname" name="fname" require autofocus>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="name" class="col-sm-3">Last Name<span  class="text-danger">*</span></label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="lname" name="lname" require autofocus>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="name" class="col-sm-3">Sex<span  class="text-danger">*</span></label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="sex" name="sex" require autofocus>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="name" class="col-sm-3">Username<span  class="text-danger">*</span></label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="username" name="username" require autofocus>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="name" class="col-sm-3">Password<span  class="text-danger">*</span></label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control" id="password" name="password" require autofocus>
                        </div>
                    </div>


                    <div class="form-group row">
                        <label for="name" class="col-sm-3">Phone Number<span  class="text-danger">*</span></label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="phone" name="phone" require autofocus>
                        </div>
                    </div>
                    <!-- <div class="form-group row">
                        <label for="productid" class="col-sm-3">Productid<span  class="text-danger">*</span></label>
                        <div class="col-sm-9">
                            <select name="Productid" id="Productid" class="form-control chosen-select" require>
                            <option >Choose...</option>
                            <?php foreach ($cat as $c){?>
                                <option value="<?php echo $c['id'];?>"><?php echo $c['name'];?></option>
                            <?php }?>
                            </select>
                        </div>
                    </div> -->
                    <div class="form-group row">
                        <label for="description" class="col-sm-3">Address</label>
                        <div class="col-sm-9">
                            <textarea name="address" id="address" cols="30" rows="3" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3"></label>
                        <div class="col-sm-9">
                            <button class="btn-success btn-sm" name="btn">Submit</button>
                        </div>
                    </div>

                </div>
            
            </div>
          
        </form>

    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="<?php echo BURL;?>assets/chosen/chosen.jquery.min.js"></script>
    <script src="<?php echo BURL;?>assets/ckeditor/ckeditor.js"></script>
</body>
</html>