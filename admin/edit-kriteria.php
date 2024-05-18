<?php include 'header.php' ?>
<?php
  $kriteria = mysqli_query($conn, "SELECT * FROM kriteria WHERE id_kriteria ='".$_GET['id']."' ");
  if(mysqli_num_rows($kriteria)==0){
    echo"<script>window.location='kriteria.php'</script>";
  }
  $k = mysqli_fetch_object($kriteria);
?>
  <!-- konten-->
  <div class="content">
    
    <div class="container">
      <div class="box">
        <div class="box-header">
          Edit kriteria
        </div>
        <div class="box-body">
          <form action="" method="POST" enctype="multipart/form-data">
            <div class="form-group">
              <label>Id</label>
              <input type="text" name="id_kriteria" value="<?= $k->id_kriteria?>" class="input-control" readonly>
            </div>
            <div class="form-group">
              <label>Nama</label>
              <input type="text" name="nama_kriteria" value="<?= $k->nama_kriteria?>"class="input-control" required>
              <div class="form-group">
              <label>bobot</label>
              <input type="text" name="bobot" value="<?= $k->bobot?>" class="input-control" required>
            </div>
             <div class="form-group">
              <label>Sifat</label>
              <select name="sifat" class="input-control">
                  <option value="benefit">Benefit</option>
                  <option value="cost">Cost</option>
              </select>
            </div>
            
            <button type="button" class="btn" onclick="window.location='kriteria.php'">Kembali</button>
            <input type="submit" name="submit" value="Simpan" class="btn btn-blue">
          </form>
          <?php
            if (isset($_POST['submit'])) {
            //  print_r($_FILES['gambar']);
              $id  = addslashes($_POST['id_kriteria']);
              $nama = addslashes(($_POST['nama_kriteria']));
              $bobot = addslashes($_POST['bobot']);
              $pk = 0;
              $sifat = addslashes($_POST['sifat']);

                       $update = mysqli_query($conn, "UPDATE kriteria SET 
                        id_kriteria = '".$id."',
                        nama_kriteria = '".$nama."',
                        bobot = '".$bobot."',
                        poin_kriteria = '".$pk."',
                        sifat = '".$sifat."'
                        WHERE id_kriteria ='".$_GET['id']."'
                      ");
                    if ($update) {
                    echo '<div class="alert alert-succes"> Berhasil Disimpan</div>';
                    } else{
                      echo 'Gagal Disimpan'.mysqli_error($conn) ;
                    }
                  
                } 
              ?>
        </div>
      </div>
    </div>
  </div>

<?php include'footer.php' ?>