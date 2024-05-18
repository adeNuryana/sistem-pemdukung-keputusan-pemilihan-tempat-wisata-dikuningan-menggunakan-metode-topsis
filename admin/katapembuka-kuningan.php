<?php include 'header.php' ?>

  <!-- konten-->
  <div class="content">
    
    <div class="container">
      <div class="box">
        <div class="box-header">
        kata pembuka
        </div>
        <div class="box-body">
           <?php 
            if (isset($_GET['succes'])) {
              echo"<div class='alert alert-succes'>".$_GET['succes']."</div>";
            }
           ?>
          <form action="" method="POST" enctype="multipart/form-data">
             <div class="form-group">
              <label>kata pembuka</label>
              <textarea name="kata_pembuka" class="input-control" placeholder="kata pembuka" id="keterangan"> <?= $d->kata_pembuka ?> </textarea>
            </div>
             <div class="form-group">
              <label>Foto kuningan</label>
              <img src="../uploads/identitas/<?= $d->foto_kuningan?>" width="200px" class="image">
              <input type="hidden" name="foto_lama" value="<?= $d->foto_kuningan ?>">
             <input type="file" name="foto_baru" class="input-control">
            </div>
            <input type="submit" name="submit" value="Simpan Perubahan" class="btn btn-blue">
          </form>
          <?php
            if (isset($_POST['submit'])) {

              $sambutan = addslashes($_POST['kata_pembuka']);
              $currdate = date('y-m-d H:i:s');

              //nampung dan validasi data foto sekolah

                 if($_FILES['foto_baru']['name'] != ''){
                  echo"user ganti gambar";

                    $filename = $_FILES['foto_baru']['name'];
                    $tmpname = $_FILES['foto_baru']['tmp_name'];
                    $filesize = $_FILES['foto_baru']['size'];

                    $formatfile = pathinfo($filename, PATHINFO_EXTENSION);
                    $rename  = 'foto_kuningan'.time().'.'.$formatfile;
                    $allowedtype = array('png','jpg','jpeg','gif','bmp');
                    if(!in_array($formatfile, $allowedtype)){
                      echo '<div class="alert alert-error"> Format foto Kepala sekolah Tidak Diizinkan.</div>';
                     return false; 
                    }elseif($filesize > 2000000){
                      echo '<div class="alert alert-error"> Ukuran File foto Kepala sekolah Tidak Boleh lebih besar dari 2 mb.</div>'; 
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
                          kata_pembuka = '".$sambutan."',
                          foto_kuningan = '".$rename."',
                          updated_at = '".$currdate."'
                           WHERE id_pengaturan ='".$d->id_pengaturan."'
                           "); 
            
                  if ($update) {
                    echo "<script>window.location='katapembuka-kuningan.php?succes=Edit data berhasil'</script>";
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