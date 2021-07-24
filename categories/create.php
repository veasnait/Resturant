<?php
session_start();
include('../config.php');
include('../function.php');

$sql = "select * from optionc";
$cat = query($sql);
?>
<?php
            if(isset($_POST['btn']))
            {
                $name = $_POST['name'];
                $desc = $_POST['description'];
                // $option = $_POST['option'];
                $sql = "INSERT INTO  categories (name, description) VALUES('{$name}','{$desc}')";
                $result = non_query($sql);
                if($result)
                {
                    $_SESSION['success'] ="data has been to save!";
                }else
                {
                    $_SESSION['fail'] ="data fail to save.please check again.";
                } 
            }
 ?>
<?php include("../templates/header.php"); ?>
        <h1 class="text text-success text-sm">Create Categories</h1>
        <p>
            <a href="index.php" class="btn btn-success btn-sm">back</a>
        </p>
        <hr>
        <form method="POST">
            <div class="row">
                <div class="col-7">

                    <?php  include('../sms.php');?>
                    <div class="form-group row">
                        <label for="name" class="col-sm-3">Name <span  class="text-danger">*</span></label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="name" name="name" require autofocus>
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
                            <button class="btn-success btn-sm" name="btn">Save</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
<?php include("../templates/footer.php"); ?>