<?php 
SESSION_start();
include '../koneksi.php';
if(!isset($_SESSION['status_login'])){
	echo"<script>window.location = '../login.php? msg=Harap Login Terlebih Dahulu!'</script>";
}
	date_default_timezone_set("Asia/Jakarta");  

$identitas = mysqli_query($conn,"SELECT * FROM pengaturan ORDER BY id_pengaturan DESC LIMIT 1");
$d = mysqli_fetch_object($identitas);
?>

<!DOCTYPE html>
<html>
<head>
	<link rel="icon" href="../uploads/identitas/<?= $d->favicon ?>">
	<title>Panel Admin - <?= $d->nama ?></title>
	<link rel="stylesheet" type="text/css" href="../assets/css/style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<script src='https://cdn.tiny.cloud/1/no-api-key/tinymce/6/tinymce.min.js' referrerpolicy="origin"></script>
	<script> 
		tinymce.init({
 	 selector: '#keterangan'
		});
		</script>
</head>
<body class="bg-light">
<!-- ini bagian navbar-->
 <div class="navbar">
 	<div class="container">

 		<!--navbar brand-->
 		<h2 class="nav-brand float-left"><a href="index.php"><?= $d->nama ?></a></h2>

 		<!--navbar menu-->
 		<ul class="nav-menu float-left">
 			<li><a href="index.php">Dashboard</a></li>
 			<?php if($_SESSION['ulevel'] == 'Super Admin'){ ?>
 				<li><a href="pengguna.php">Pengguna</a></li>
 				<li><a href="nilai_referensi.php">Tempat Wisata Terbaik</a></li>
 			  <?php }elseif($_SESSION['ulevel'] == 'Admin') { ?>
 			<li><a href="alternatif.php">Tempat Wisata</a></li>
 			<li><a href="kriteria.php">Kriteria</a></li>
 			<li>
 				<a href="index.php">pemilihan terbaik <i class="fa fa-caret-down"></i> </a>
 				<!-- sub menu-->
 				<ul class="dropdown">
 			        <li><a href="isi_nilai_matrik.php">Isi nilai matriks</a></li>
 			        <li><a href="nilai_matrik.php">nilai matrik</a></li>
 			        <li><a href="nilai_referensi.php">nilai referensi</a></li>
 				</li> </ul>
 			<li>
 				<a href="index.php">Pengaturan <i class="fa fa-caret-down"></i> </a>
 				<!-- sub menu-->
 				<ul class="dropdown">
 			        <li><a href="identitas-disporapar.php">Identitas Disporapar</a></li>
 			        <li><a href="tentang-kuningan.php">Tentang kuningan</a></li>
 			        <li><a href="katapembuka-kuningan.php">kata pembuka kuningan</a></li>
 				</li> </ul>
 			<?php } ?>
 			<li>
 				<a href="index.php"><?= $_SESSION['uname']?>(<?= $_SESSION['ulevel']?>) <i class="fa fa-caret-down"></i></a>
 				<!-- sub menu-->
 				<ul class="dropdown">
 			        <li><a href="ubah-password.php">Ubah Password</a></li>
 			        <li><a href="logout.php">Keluar</a></li>
 				</li> </ul>


 			</li>
 		</ul>
        <div class="clearfix"></div>
 	</div>
  </div>