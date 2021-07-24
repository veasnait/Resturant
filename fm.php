<?php
    session_start();
    include('config.php');
    include('function.php');
    is_login();
?>
<?php  include("templates/header.php");?>
    <iframe src="<?php echo BURL; ?>fileman/index.html?langCode=km" width="100%" height="550" frameborder="0">
    </iframe>
<?php include("templates/footer.php");?>