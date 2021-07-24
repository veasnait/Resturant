<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="<?php echo BURL;?>assets/chosen/chosen.min.css">
    
</head>
<body>
<nav class="navbar navbar-expand-lg sticky-top navbar-dark bg-dark">
 <div class="container">
      <!-- <a class="navbar-brand" href="<?php echo BURL;?>index.php">DOMREYSOR</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button> -->

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="<?php echo BURL;?>products">Products</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo BURL;?>categories">Categories</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo BURL;?>fm.php">File manager</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo BURL;?>register.php">Register</a>
            </li>
            <!-- <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Dropdown
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="<?php echo BURL;?>logout.php">logout</a>
              </div>
            </li> -->
            <li class="nav-item">
              <a class="nav-link"  href="<?php echo SURL;?>index.php">Order</a>
            </li>
          </ul>
          <!-- <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form> -->
          <a class="nav-link" href="<?php echo BURL;?>logout.php">Logout</a>
        </div>
      </nav>
 </div>

<div class="container mt-3">
