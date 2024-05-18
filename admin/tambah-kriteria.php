<?php include 'header.php' ?>

  <!-- konten-->
  <div class="content">
  	
  	<div class="container">
  		<div class="box">
  			<div class="box-header">
  				Tambah kriteria
  			</div>
  			<div class="box-body">
          <form action="" method="POST" enctype="multipart/form-data">
            <div class="form-group">
              <label>Id</label>
              <input type="number" name="id_kriteria" placeholder="ID" class="input-control" required>
            </div>
            <div class="form-group">
              <label>Nama</label>
              <input type="text" name="nama_kriteria" placeholder="Nama" class="input-control" required>
              <div class="form-group">
              <label>bobot</label>
              <input type="text" name="bobot" placeholder="Bobot" class="input-control" required>
            </div>
             <div class="form-group">
              <label>Sifat</label>
              <select name="sifat" class="form-control">
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

                       $simpan = mysqli_query($conn, "INSERT INTO kriteria VALUES (
                        '".$id."',
                        '".$nama."',
                         '".$pk."',
                        '".$bobot."',
                       
                        '".$sifat."'
                      )");
                    if ($simpan) {
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