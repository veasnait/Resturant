
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Document</title>

    <script type="text/javascript">
        window.onload = function () {
            var buttonElement = document.getElementById('button');
            buttonElement.addEventListener('click', function() {
                alert(document.getElementById('customerid').value);
            });
        }
    </script>
</head>
<body>
<div class="container mt-3">
<nav class="navbar navbar-expand-lg sticky-top navbar-dark bg-dark">
  <!-- <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button> -->

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<?php echo BURL;?>">Products <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="<?php echo URL;?>1.php?name=ស្រាបៀ&id=1">ស្រាបៀ</a>
          <a class="dropdown-item" href="<?php echo URL;?>1.php?name=ភេសជ្ជ&id=2">ភេសជ្ជៈ</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="<?php echo URL;?>1.php?name=បាយ&id=3">បាយ</a>
          <a class="dropdown-item" href="<?php echo URL;?>1.php?name=សម្ល&id=4">សម្ល</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="<?php echo URL;?>1.php?name=បង្អែម&id=5">បង្អែម</a>
          <a class="dropdown-item" href="<?php echo URL;?>1.php?name=ផ្សេងៗ&id=6">ផ្សេងៗ</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo URL;?>service.php">Service</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="<?php echo URL;?>maps.php"">Maps</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo URL;?>aboutme.php">About Me</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
        <a class="nav-link" href="<?php echo BURL;?>userlogin.php">Login</a>
        <a class="nav-link" href="<?php echo BURL;?>userlogout.php">Logout</a>  
      <!-- <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button> -->
    </form>
  </div>
</nav>
</div>
<div class="container mt-3">























