<?php 
$s=mysqli_query($conn,"select * from kriteria");
$h=mysqli_num_rows($s)
?>

  <!-- konten-->
  <div class="content">
    
    <div class="container">
      <div class="box">
        <div class="box-header">
          Nilai Matriks Ternormalisasi
        </div>
        <div class="box-body">
          <?php 
            if (isset($_GET['succes'])) {
              echo"<div class='alert alert-succes'>".$_GET['succes']."</div>";
            }
                        $s=mysqli_query($conn,"select * from kriteria");
            $h=mysqli_num_rows($s)
           ?>

          <table class="table">
           <thead>
             <tr>
               <th rowspan="2">NO</th>
               <th rowspan="2">Nama</th>
               <th colspan="<?php echo $h; ?>">Kriteria</th>
             </tr>
             <tr>
            <?php
            for($n=1;$n<=$h;$n++){
              echo"<th>C{$n}</th>";
            }
            ?>
            </tr>
           </thead>
<tbody>
<?php
$i=0;
$a=mysqli_query($conn,"select * from alternatif order by id_alternatif asc");



while($da=mysqli_fetch_assoc($a)){


	echo "<tr>
		<td>".(++$i)."</td>
		<td>$da[nm_alternatif]</td>";
		$idalt=$da['id_alternatif'];
	
		//ambil nilai
			
			$n=mysqli_query($conn,"select * from nilai_matrik where id_alternatif='$idalt' order by id_matrik asc" );
	
		while($dn=mysqli_fetch_assoc($n)){
			$idk=$dn['id_kriteria'];
			
			//nilai kuadrat
			
			$nilai_kuadrat=0;
			$k=mysqli_query($conn,"select * from nilai_matrik where id_kriteria='$idk' ");
			while($dkuadrat=mysqli_fetch_assoc($k)){
				$nilai_kuadrat=$nilai_kuadrat+($dkuadrat['nilai']*$dkuadrat['nilai']);
			}	
				
			echo "<td align='center'>".round(($dn['nilai']/sqrt($nilai_kuadrat)),3)."</td>";
			
		}
		echo "</tr>\n";

}
?>

</tbody>
</table>
</div>
</div>
</div>
