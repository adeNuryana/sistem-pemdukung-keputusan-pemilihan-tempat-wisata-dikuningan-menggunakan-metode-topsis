<?php include 'header.php' ?>

<?php
  $alternatif = mysqli_query($conn, "SELECT * FROM alternatif WHERE id_alternatif ='".$_GET['id']."' ");
  if(mysqli_num_rows($alternatif)==0){
    echo"<script>window.location='alternatif.php'</script>";
  }
  $p = mysqli_fetch_object($alternatif);
?>

  <!-- konten-->
  <div class="content">
  	
  	<div class="container">
  		<div class="box">
  			<div class="box-header">
  				Edit Tempat Wisata
  			</div>
  			<div class="box-body">
          <form action="" method="POST" enctype="multipart/form-data">
            <div class="form-group">
              <label>id</label>
              <input type="text" name="id_alternatif" placeholder="Nama alternatif" value="<?= $p->id_alternatif?>" class="input-control" readonly>
            </div>
            <div class="form-group">
              <label>Nama</label>
              <input type="text" name="nm_alternatif" placeholder="Nama alternatif" value="<?= $p->nm_alternatif?>" class="input-control" required>
            </div>
             <div class="form-group">
              <label>Keterangan</label>
              <textarea name="keterangan" class="input-control" placeholder="Keterangan"><?= $p->keterangan?></textarea>
            </div>
             <div class="form-group">
              <label>Gambar</label>
              <img src="../uploads/alternatif/<?= $p->gambar?>" width="200px" class="image">
              <input type="hidden" name="gambar2" value="<?= $p->gambar ?>">
             <input type="file" name="gambar" class="input-control">
            </div>
            <button type="button" class="btn" onclick="window.location='alternatif.php'">Kembali</button>
            <input type="submit" name="submit" value="Simpan" class="btn btn-blue">
          </form>
          <?php
            if (isset($_POST['submit'])) {
              $id = addslashes($_POST['id_alternatif']);
              $nama = addslashes( ucwords($_POST['nm_alternatif']));
              $ket = addslashes($_POST['keterangan']);
              $currdate = date('y-m-d H:i:s');

                 if($_FILES['gambar']['name'] != ''){
                  echo"user ganti gambar";

                    $filename = $_FILES['gambar']['name'];
                    $tmpname = $_FILES['gambar']['tmp_name'];
                    $filesize = $_FILES['gambar']['size'];

                    $formatfile = pathinfo($filename, PATHINFO_EXTENSION);
                    $rename  = 'alternatif'.time().'.'.$formatfile;
                    $allowedtype = array('png','jpg','jpeg','gif','bmp');
                    if(!in_array($formatfile, $allowedtype)){
                      echo '<div class="alert alert-error"> Format File Tidak Diizinkan.</div>';
                     return false; 
                    }elseif($filesize > 2000000){
                      echo '<div class="alert alert-error"> Ukuran File Tidak Boleh lebih besar dari 2 mb.</div>'; 
                      return false;      
                    }else{
                          if (file_exists("../uploads/alternatif/".$_POST['gambar2'])) {
                            unlink("../uploads/alternatif/".$_POST['gambar2']);
                          }
                          move_uploaded_file($tmpname, "../uploads/alternatif/".$rename); 
                          } 
                      }else{
                          echo" user tidak ganti gambar"; 
                          $rename = $_POST['gambar2'];
                        }
                         $update = mysqli_query($conn, "UPDATE alternatif SET 
                          id_alternatif = '".$id."',
                          nm_alternatif = '".$nama."',
                          keterangan = '".$ket."',
                          gambar = '".$rename."',
                          updated_at = '".$currdate."'
                           WHERE id_alternatif ='".$_GET['id']."'
                           "); 
            
                  if ($update) {
                    echo "<script>window.location='alternatif.php?succes=Edit data berhasil'</script>";
                  } else{
                    echo 'Gagal Diedit'.mysql_error($conn) ;
                  }
              
             } 
           ?>
  			</div>
  		</div>
  	</div>
  </div>

<?php include'footer.php' ?>