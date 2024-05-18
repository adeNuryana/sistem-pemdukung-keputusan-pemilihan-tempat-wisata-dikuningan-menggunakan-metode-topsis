<?php
session_start();
include 'koneksi.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Halaman Login</title>
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    </head>
    <body>

       <div class="page-login">
           <div class="box box-login">
               <div class="box-header text-center">
                   Login
               </div>
                 <div class="box-body">
                    <?php
                    if(isset($_GET['msg'])){
                        echo "<div class='alert alert-error'>" .$_GET['msg']. "</div>";
                    } 
                     ?>
                    <form action="" method="POST">
                        <div class="form-group">
                            <label>Username</label>
                            <input type="text" name="user" placeholder="Username" class="input-control">

                            </input>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="pass" placeholder="Password" class="input-control">
                            </input>
                        </div>
                        <input type="submit" name="submit" value="Login" class="btn">
                     </form>
                     <?php
                     if (isset($_POST['submit'])) {
                         $user= mysqli_real_escape_string($conn, $_POST['user']);
                         $pass=mysqli_real_escape_string($conn, $_POST['pass']);
                         $cek= mysqli_query($conn, "SELECT*FROM pengguna WHERE username = '$user' ");
                         if( mysqli_num_rows($cek)>0){
                            $d= mysqli_fetch_object($cek);
                            if(md5($pass) == $d->password){
                                $_SESSION['status_login'] =true;
                                $_SESSION['uid'] = $d->id;
                                $_SESSION['uname'] = $d->nama;
                                $_SESSION['ulevel'] = $d->level;
                                echo " <script> window.location = 'admin/index.php'</script>";


                            }else {
                                echo '<div class="alert alert-error "> password salah</div>';
                            }
                         }else{ 
                        echo '<div class="alert alert-error">Username tidak di temukan</div>';
                     }
                     } 
                     ?>
                </div>
                <div class="box-footer text-center">
                    <a href="index.php">Halaman Utama</a>
                </div>
            </div>
       </div>
    </body>
</html>  