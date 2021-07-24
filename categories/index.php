<?php
session_start();
include('../config.php');
include('../function.php');
is_login();

    $active = 1;
    $page = 1;
    if(isset($_GET['page']))
    {
        $page = $_GET['page'];
        $active = $page;
    } 
    $sql = "select * from categories where active = 1 limit ?,".ROW;
    $sql1 = "select * from categories where active = 1";//ករណី Search
    if(isset($_GET['q']))
    {
        $q = $_GET['q'];
        $sql = "select * from categories where active=1 and 
        (name like'%{$q}%' or description like '%{$q}%')limit ?,".ROW;
        $sql1 = "select * from categories where active=1 and(name like'%{$q}%' or description like '%{$q}%')"; 
    }
   
    $cats = paginate($page, $sql); 

  

 ?>
<?php include("../templates/header.php"); ?>
<div class="d-flex justify-content-between mb-2">
    <h1 class="text text-success text-sm">Categories</h1> 
        <div>
            <form >
                <input type="text" name='q' placeholder="search..."> <button>search</button>
            </form>
        </div>
    </div>
     <!-- <h1 class="text text-success text-sm">Categories</h1> -->
        <div class="row">
            <div class="col-6">
                <a href="create.php" class="btn btn-success btn-sm">Additem</a>
            </div>
        </div>
        <hr>
                <?php include('../sms.php'); ?>
                <table class="table table-bordered table-sm">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Description</th>
                            <!-- <th>Categoryid</th> -->
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                     <!-- show continue number of products -->
                        <?php 
                            $pagex = @$_GET['page'];
                            if(!$pagex)
                            {
                                $pagex = 1;

                            }
                            $i = ROW * ($pagex-1) + 1;
                        ?>
                        <?php   foreach ( $cats as  $c){?>
                            <tr>
                                <td><?php echo $i++;?></td>
                                <td><?php echo $c['name'];?></td>
                                <td><?php echo $c['description'];?></td>
                                <!-- <td><?php echo $c['Op_category'];?></td> -->
                                <td>
                                    <a href="delete.php?id=<?php echo $c['id'];?> " onclick="return confirm('Do you want to delete?')"
                                    class="btn btn-danger btn-sm">Delete</a>
                                    <a href="edit.php?id=<?php echo $c['id'];?>" class="btn btn-success btn-sm">Edit</a>
                                </td>
                            </tr>
                        <?php  }?>
                    </tbody>
                </table>
                <div class="d-flex justify-content-between"> 
                    <p>
                         Total: <?php  echo mysqli_num_rows($cats);?> Records
                    </p>
                     <?php links($sql1, $active);?> 
                </div> 
                
<?php include("../templates/footer.php"); ?>