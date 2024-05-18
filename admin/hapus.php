<?php
	include '../koneksi.php';
	if (isset($_GET['idpengguna'])) {
		$delete = mysqli_query($conn, "DELETE FROM pengguna WHERE id = '".$_GET['idpengguna']."' " );
		echo "<script>window.location= 'pengguna.php'</script>";
	}

	if (isset($_GET['idalternatif'])) {
		$alternatif = mysqli_query($conn, "SELECT gambar FROM alternatif WHERE id_altenatif = '".$_GET['idalternatif']."' ");
		if(mysqli_num_rows($alternatif)>0){
			$p = mysqli_fetch_object($alternatif);
			if (file_exists("../uploads/alternatif/".$p->gambar)){
				unlink("../uploads/alternatif/".$p->gambar);
			}
		}
		$delete = mysqli_query($conn, "DELETE FROM alternatif WHERE id_alternatif = '".$_GET['idalternatif']."' " );
		echo "<script>window.location= 'alternatif.php'</script>";
	}
	if (isset($_GET['idkriteria'])) {
		$delete = mysqli_query($conn, "DELETE FROM kriteria WHERE id_kriteria = '".$_GET['idkriteria']."' " );
		echo "<script>window.location= 'kriteria.php'</script>";
	}
?>