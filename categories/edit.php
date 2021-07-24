<?php
session_start();
include('../config.php');
include('../function.php');
is_login();
ob_start();

$sql ="select * from optionc";
$result= query($sql);

?>
<?php
        $id = $_GET['id'];
        $sql = "select * from categories where id = {$id}";
        $cat = query($sql);
        $cat = mysqli_fetch_array($cat);
?>
<?php include("../templates/header.php"); ?>
        <h1>Edit Categories</h1>
        <p>
            <a href="index.php" class="btn btn-success btn-sm">back</a>
        </p>
        <hr>
        <form method="POST">
            <div class="row">
                <div class="col-7">
                <?php  include("../sms.php")?>

                    <input type="hidden" name="id" value="<?php echo $cat['id'];?>">
                    
                    <div class="form-group row">
                      <label for="name" class="col-sm-3">Name <span  class="text-danger">*</span></label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="name" name="name"
                            value="<?php  echo $cat['name'];?>"require autofocus>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="description" class="col-sm-3">Description</label>
                        <div class="col-sm-9">
                            <textarea name="description" id="description" cols="30" rows="3" class="form-control"><?php  echo $cat['description'];?></textarea>
                        </div>
                    </div>
                    <!-- <div class="form-group row">
                        <label for="option" class="col-sm-3">Option Category <span class="text-danger">*</span></label>
                        <div class="col-sm-9">
                        <select name="option" id="option" class="form-control chosen-select" require>
                                <option >Choose...</option>
                                <?php foreach ($result as $c){?>
                                    <option value="<?php echo $c['id'];?>"><?php echo $c['name'];?></option>
                                 <?php }?>
                            </select>
                            <!-- <input type="text" class="form-control" id="option" name="option" value="<?php echo $cat['Op_category'];?><?php echo $cat['Op_category'];?>" require> -->
                        </div>
                    </div> -->

                    <div class="form-group row">
                        <label class="col-sm-3"></label>
                        <div class="col-sm-9">
                            <button class="btn-success btn-sm" name="btn">Save</button>
                        </div>
                    </div>

                </div>
            </div>
        </form>
       <?php 

        if(isset($_POST['btn']))
        {
            $id = $_POST['id'];
            $name = $_POST['name'];
            $desc = $_POST['description'];
            // $option = $_POST['option'];
            $sql = "UPDATE categories SET name='{$name}',description='{$desc}' WHERE id = {$id}";
            $re = non_query($sql);
            if($re)
            {
                $_SESSION['success'] = "data has been saved!";
                header('location:index.php');
            }else
            {
                $_SESSION['fail'] = "Fail to edit data.please check agian.";
                header("location: edit.php?id=".$id);
            }
        }
       ?>
<?php include("../templates/footer.php"); ?>