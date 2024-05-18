<?php include 'header.php' ?>

  <!-- konten-->
  <div class="content">
  	
  	<div class="container">
  		<div class="box">
  			<div class="box-header">
  				Tentang kuningan
  			</div>
  			<div class="box-body">
           <?php 
            if (isset($_GET['succes'])) {
              echo"<div class='alert alert-succes'>".$_GET['succes']."</div>";
            }
           ?>
          <form action="" method="POST" enctype="multipart/form-data">
             <div class="form-group">
              <label>Tentang kuningan</label>
              <textarea name="tentang" class="input-control" placeholder="Tentang Sekolah" id="keterangan"><?= $d->tentang_kuningan ?></textarea>
            </div>
             <div class="form-group">
              <label>Foto kuningan</label>
              <img src="../uploads/identitas/<?= $d->foto_tentang_kuningan?>" width="200px" class="image">
              <input type="hidden" name="foto_lama" value="<?= $d->foto_tentang_kuningan ?>">
             <input type="file" name="foto_baru" class="input-control">
            </div>
            <input type="submit" name="submit" value="Simpan Perubahan" class="btn btn-blue">
          </form>
          <?php
            if (isset($_POST['submit'])) {

              $tentang = addslashes($_POST['tentang']);
              $currdate = date('y-m-d H:i:s');

              //nampung dan validasi data foto sekolah

                 if($_FILES['foto_baru']['name'] != ''){
                  echo"user ganti gambar";

                    $filename = $_FILES['foto_baru']['name'];
                    $tmpname = $_FILES['foto_baru']['tmp_name'];
                    $filesize = $_FILES['foto_baru']['size'];

                    $formatfile = pathinfo($filename, PATHINFO_EXTENSION);
                    $rename  = 'foto_tentang_kuningan'.time().'.'.$formatfile;
                    $allowedtype = array('png','jpg','jpeg','gif','bmp');
                    if(!in_array($formatfile, $allowedtype)){
                      echo '<div class="alert alert-error"> Format foto tentang kuningan Tidak Diizinkan.</div>';
                     return false; 
                    }elseif($filesize > 2000000){
                      echo '<div class="alert alert-error"> Ukuran File foto tentang kuningan Tidak Boleh lebih besar dari 2 mb.</div>'; 
                      return false;      
                    }else{
                          if (file_exists("../uploads/identitas/".$_POST['foto_lama'])) {
                            unlink("../uploads/identitas/".$_POST['foto_lama']);
                          }
                          move_uploaded_file($tmpname, "../uploads/identitas/".$rename); 
                          } 
                      }else{
                          echo" user tidak ganti gambar"; 
                          $rename = $_POST['foto_lama'];
                        }
                    
                         $update = mysqli_query($conn, "UPDATE pengaturan SET 
                          tentang_kuningan = '".$tentang."',
                          foto_tentang_kuningan = '".$rename."',
                          updated_at = '".$currdate."'
                           WHERE id_pengaturan ='".$d->id_pengaturan."'
                           ");
            
                  if ($update) {
                    echo "<script>window.location='tentang-kuningan.php?succes=Edit data berhasil'</script>";
                  } else{
                    echo 'Gagal Diedit'.mysqli_error($conn) ;
                  }
              
             } 
           ?>
  			</div>
  		</div>
  	</div>
  </div>

<?php include'footer.php' ?>