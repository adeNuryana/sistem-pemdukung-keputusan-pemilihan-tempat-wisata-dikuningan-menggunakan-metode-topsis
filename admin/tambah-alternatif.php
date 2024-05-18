<?php include 'header.php' ?>

  <!-- konten-->
  <div class="content">
  	
  	<div class="container">
  		<div class="box">
  			<div class="box-header">
  				Tambah Tempat Wisata
  			</div>
  			<div class="box-body">
          <form action="" method="POST" enctype="multipart/form-data">
            <div class="form-group">
              <label>ID</label>
              <input type="number" name="id_alternatif" placeholder="ID" class="input-control" required>
            </div>
            <div class="form-group">
              <label>Nama</label>
              <input type="text" name="nm_alternatif" placeholder="Nama tempat wisata" class="input-control" required>
            </div>
             <div class="form-group">
              <label>Keterangan</label>
              <textarea name="keterangan" class="input-control" placeholder="Keterangan"></textarea>
            </div>
             <div class="form-group">
              <label>Gambar</label>
             <input type="file" name="gambar" class="input-control" required>
            </div>
            <button type="button" class="btn" onclick="window.location='alternatif.php'">Kembali</button>
            <input type="submit" name="submit" value="Simpan" class="btn btn-blue">
          </form>
          <?php
            if (isset($_POST['submit'])) {
            //  print_r($_FILES['gambar']);
              $id = addslashes($_POST['id_alternatif']);
              $nama = addslashes( ucwords($_POST['nm_alternatif']));
              $ket = addslashes($_POST['keterangan']);

              $filename = $_FILES['gambar']['name'];
              $tmpname = $_FILES['gambar']['tmp_name'];
              $filesize = $_FILES['gambar']['size'];

              $formatfile = pathinfo($filename, PATHINFO_EXTENSION);
              $rename  = 'alternatif'.time().'.'.$formatfile;

              $allowedtype = array('png','jpg','jpeg','gif','bmp');
              if(!in_array($formatfile, $allowedtype)){
                echo '<div class="alert alert-error"> Format File Tidak Diizinkan.</div>';
              }elseif($filesize > 2000000){
                echo '<div class="alert alert-error"> Ukuran File Tidak Boleh lebih besar dari 2 mb.</div>';       
              }else{

                move_uploaded_file($tmpname, "../uploads/alternatif/".$rename);
                       $simpan = mysqli_query($conn, "INSERT INTO alternatif VALUES (
                        '".$id."',
                        '".$nama."',
                        '".$ket."',
                        '".$rename."', 
                        null,
                        null
                      )");
                    if ($simpan) {
                    echo '<div class="alert alert-succes"> Berhasil Disimpan</div>';
                    } else{
                      echo 'Gagal Disimpan'.mysqli_error($conn) ;
                    }
                  }
                } 
              ?>
  			</div>
  		</div>
  	</div>
  </div>

<?php include'footer.php' ?>