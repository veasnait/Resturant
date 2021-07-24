<?php
// funtion to run select query
function query($sql)
{
    $con = mysqli_connect(SERVER, USER, PASSWORD ,DB);
    if(!$con)
    {
        die("can't connect to database");
    }
    $result = mysqli_query($con, $sql);
    mysqli_close($con);
    return $result;
}
// funtion to run non query (insert delete update)
function non_query($sql)
{
    $con = mysqli_connect(SERVER, USER, PASSWORD ,DB);
    if(!$con)
    {
        die("can't connect to database");
    }
    // $i = $con->query($sql); // stand for mysqli_query
    $result = mysqli_query($con, $sql);
    $i = mysqli_affected_rows($con);
    mysqli_close($con);
    $i = $i>0?true:false;
    return $i;

} 
// pagination function
function paginate($page, $sql)
{
    $start = ROW * ($page - 1);
    $sql = str_replace('?', $start, $sql);
    $result = query($sql);
    return $result;
}
function links($sql, $active)
{
    $total = mysqli_num_rows(query($sql));//រាប់ចំនួនទិន្នន័យដែលមាន
    $total_page = ceil($total/ROW);// រកចំនួន page សរុបតាម​Data
    $ul = "<ul class='pagination'>";//Print pagination  Link
    for($i=1; $i<=$total_page;$i++)
    {
        $ul .= "<li class='page-item ". ($active==$i?'active':'')."'>";
        $ul .= "<a href='?page=" .$i. "'class='page-link'>" .$i ."</a>";
        $ul .= "</li>";
    }
    $ul .= "</ul>";
    echo $ul;
}
/// funtion upload data
    function upload($file, $path)
    {
        $file_name = $file['name'];
        $ext = pathinfo($file_name, PATHINFO_EXTENSION);

        $new_name = md5(date('Y-m-d-H-i:s')).".".$ext;
       
        $tmp_name = $file['tmp_name'];
        $i = move_uploaded_file($tmp_name, $path .$new_name);
        if($i>0)
        {
            return $new_name;
        }
        else{
            return false;
        }

    }

//funtion to do login
    function login($username ,$pass)
    {
        $sql =  "select * from users where username = '{$username}' ";
        $result = query($sql);
        $user = mysqli_fetch_array($result);
        if($user==null)
        {
            echo"<p class='text-danger'>Invalid username or password!</p>";
        }
        else{
            if($user['password']==md5($pass))
            {
                $_SESSION['user'] = $user;
                header('location: products/index.php');
            }  
            else{
                echo"<p class ='text-danger'> invalid username or password!</p>";
            }
        }

    }
    function is_login()
    {
        if($_SESSION['user']== null)
        {
            header('location:'.BURL."login.php");
        }
    }
    // user login 
    function userlogin($username ,$pass)
    {
        $sql =  "select * from register where username = '{$username}' ";
        $result = query($sql);
        $user = mysqli_fetch_array($result);
        if($user==null)
        {
            echo"<p class='text-danger'>Invalid username or password!</p>";
        }
        else{
            if($user['password']==md5($pass))
            {
                $_SESSION['user'] = $user;
                header('location: index.php');
            }  
            else{
                echo"<p class ='text-danger'> invalid username or password!</p>";
            }
        }

    }
    function isuser_login()
    {
        if($_SESSION['user']== null)
        {
            header('location:'.BURL."userlogin.php");
        }
    }
?>