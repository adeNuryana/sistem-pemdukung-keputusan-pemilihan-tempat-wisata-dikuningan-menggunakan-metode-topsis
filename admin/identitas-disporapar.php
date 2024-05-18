<?php include 'header.php' ?>

  <!-- konten-->
  <div class="content">
  	
  	<div class="container">
  		<div class="box">
  			<div class="box-header">
  				Identitas Disporapar
  			</div>
  			<div class="box-body">
           <?php 
            if (isset($_GET['succes'])) {
              echo"<div class='alert alert-succes'>".$_GET['succes']."</div>";
            }
           ?>
          <form action="" method="POST" enctype="multipart/form-data">
            <div class="form-group">
              <label>Nama</label>
              <input type="text" name="nama" placeholder="Nama " value="<?= $d->nama ?>" class="input-control" required>
            </div>
            <div class="form-group">
             <label>Email</label>
              <input type="email" name="email" placeholder="Email " value="<?= $d->email ?>" class="input-control" required>
            </div>
            <div class="form-group">
             <label>Telepon</label>
              <input type="number" name="telp" placeholder="Telepon " value="<?= $d->telepon ?>" class="input-control" required>
            </div>
             <div class="form-group">
              <label>Alamat</label>
              <textarea name="alamat" class="input-control" placeholder="Alamat"><?= $d->alamat ?></textarea>
            </div>
             <div class="form-group">
              <label>Google maps</label>
              <textarea name="gmaps" class="input-control" placeholder="Google maps"><?= $d->google_maps ?></textarea>
            </div>
             <div class="form-group">
              <label>Logo</label>
              <img src="../uploads/identitas/<?= $d->logo?>" width="200px" class="image">
              <input type="hidden" name="logo_lama" value="<?= $d->logo ?>">
             <input type="file" name="logo_baru" class="input-control">
            </div>
            <div class="form-group">
              <label>Favicon</label>
              <img src="../uploads/identitas/<?= $d->favicon?>" width="50px" class="image">
              <input type="hidden" name="favicon_lama" value="<?= $d->favicon ?>">
             <input type="file" name="favicon_baru" class="input-control">
            </div>
            <input type="submit" name="submit" value="Simpan Perubahan" class="btn btn-blue">
          </form>
          <?php
            if (isset($_POST['submit'])) {

              $nama = addslashes( ucwords($_POST['nama']));
              $email = addslashes($_POST['email']);
              $telp = addslashes($_POST['telp']);
              $alamat = addslashes($_POST['alamat']);
              $gmaps = addslashes($_POST['gmaps']);
              $currdate = date('y-m-d H:i:s');

              //nampung dan validasi data logo

                 if($_FILES['logo_baru']['name'] != ''){
                  echo"user ganti gambar";

                    $filename_logo = $_FILES['logo_baru']['name'];
                    $tmpname_logo = $_FILES['logo_baru']['tmp_name'];
                    $filesize_logo = $_FILES['logo_baru']['size'];

                    $formatfile_logo = pathinfo($filename_logo, PATHINFO_EXTENSION);
                    $rename_logo  = 'logo'.time().'.'.$formatfile_logo;
                    $allowedtype_logo = array('png','jpg','jpeg','gif','bmp');
                    if(!in_array($formatfile_logo, $allowedtype_logo)){
                      echo '<div class="alert alert-error"> Format  logo sekolah Tidak Diizinkan.</div>';
                     return false; 
                    }elseif($filesize_logo > 2000000){
                      echo '<div class="alert alert-error"> Ukuran File logo sekolah Tidak Boleh lebih besar dari 2 mb.</div>'; 
                      return false;      
                    }else{
                          if (file_exists("../uploads/identitas/".$_POST['logo_lama'])) {
                            unlink("../uploads/identitas/".$_POST['logo_lama']);
                          }
                          move_uploaded_file($tmpname_logo, "../uploads/identitas/".$rename_logo); 
                          } 
                      }else{
                          echo" user tidak ganti gambar"; 
                          $rename_logo = $_POST['logo_lama'];
                        }
                        //menampung data favicon
                    if($_FILES['favicon_baru']['name'] != ''){
                  echo"user ganti gambar";

                    $filename_favicon = $_FILES['favicon_baru']['name'];
                    $tmpname_favicon = $_FILES['favicon_baru']['tmp_name'];
                    $filesize_favicon = $_FILES['favicon_baru']['size'];

                    $formatfile_favicon = pathinfo($filename_favicon, PATHINFO_EXTENSION);
                    $rename_favicon  = 'favicon'.time().'.'.$formatfile_favicon;
                    $allowedtype_favicon = array('png','jpg','jpeg','gif','bmp');
                    if(!in_array($formatfile_favicon, $allowedtype_favicon)){
                      echo '<div class="alert alert-error"> Format  favicon sekolah Tidak Diizinkan.</div>';
                     return false; 
                    }elseif($filesize_favicon > 2000000){
                      echo '<div class="alert alert-error"> Ukuran File favicon sekolah Tidak Boleh lebih besar dari 2 mb.</div>'; 
                      return false;      
                    }else{
                          if (file_exists("../uploads/identitas/".$_POST['favicon_lama'])) {
                            unlink("../uploads/identitas/".$_POST['favicon_lama']);
                          }
                          move_uploaded_file($tmpname_favicon, "../uploads/identitas/".$rename_favicon); 
                          } 
                      }else{
                          echo" user tidak ganti gambar"; 
                          $rename_favicon = $_POST['favicon_lama'];
                        }
                         $update = mysqli_query($conn, "UPDATE pengaturan SET 
                          nama = '".$nama."',
                          email = '".$email."',
                          telepon = '".$telp."',
                          alamat = '".$alamat."',
                          google_maps = '".$gmaps."',
                          logo = '".$rename_logo."',
                          favicon = '".$rename_favicon."',
                          updated_at = '".$currdate."'
                           WHERE id_pengaturan='".$d->id_pengaturan."'
                           "); 
            
                  if ($update) {
                    echo "<script>window.location='identitas-disporapar.php?succes=Edit data berhasil'</script>";
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