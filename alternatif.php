<?php include 'header.php'; ?>

<div class="section">
	<div class="container ">
		<h3 class="text-center">Tempat Wisata</h3>
		<?php
				$alternatif = mysqli_query($conn, "SELECT * FROM alternatif ORDER BY id_alternatif DESC");
				if(mysqli_num_rows($alternatif)>0){
					while ($j=mysqli_fetch_array($alternatif)) {
						
			?>
			<div class="col-4">
				<a href="detail-alternatif.php?id=<?= $j['id_alternatif']?>" class="thumbnail-link">
					<div class="thumbnail-box">
						<div class="thumbnail-img" style="    background-image: url('uploads/alternatif/<?=$j['gambar']?>.');">
						</div>
						<div class="thumbnail-text">
							<?= $j['nm_alternatif']?>
						</div>
					</div>
				</a>
			</div>
				<?php }}else{ ?>
					Tidak Ada Data
				<?php } ?>
	</div>
</div>
	
<?php include 'footer.php'; ?>