<?php
session_start();
include('config.php');
include('function.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>admin Login</title>
</head>
<body>
    <div class="container mt-5">
        <form method="POST">
            <div class="row">
                <div class="col-4">
                    <h3 class='text-success'>Admin Login</h3>
                    <hr>
                    <div class="form-group">
                        <label >Username</label>
                            <input type="text" class='form-control' name='username'required>
                    </div>
                    <div class="form-group">
                        <label >Password</label>
                            <input type="password" class='form-control' name='password'required>
                    </div>
                    <button class="btn-success btn-block" name='btn'>Login</button>
                </div>
            </div>
        </form>
        <?php
            if(isset($_POST['btn']))
            {
                $username = $_POST['username'];
                $pass = $_POST['password'];
                login($username , $pass);
            }    
        ?>
    </div>
</body>
</html>