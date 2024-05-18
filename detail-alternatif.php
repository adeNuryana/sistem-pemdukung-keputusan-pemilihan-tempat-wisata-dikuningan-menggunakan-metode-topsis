<?php include 'header.php'; ?>

<div class="section">
	<div class="container text-center">
		<?php
		$alternatif = mysqli_query($conn, "SELECT * FROM alternatif WHERE id_alternatif ='".$_GET['id']."' ");
		  if(mysqli_num_rows($alternatif)==0){
		    echo 'Gagal memuat'.mysqli_error($conn);
		  }
		  $p = mysqli_fetch_object($alternatif);
		?>
		<h3><?= $p->nm_alternatif ?></h3>
		<img src="uploads/alternatif/<?= $p->gambar ?>" width="500px" class="image"></br>
		<?= $p->keterangan ?> <br><br>
		 <button type="button"  class="btn" onclick="window.location='alternatif.php'">Kembali</button>
	</div>
</div>

	
<?php include 'footer.php'; ?>