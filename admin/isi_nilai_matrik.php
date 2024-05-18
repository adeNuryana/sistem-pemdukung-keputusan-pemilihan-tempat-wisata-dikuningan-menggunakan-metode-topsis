<?php include 'header.php' ?>

  <!-- konten-->
  <div class="content">
  	
  	<div class="container">
  		<div class="box">
  			<div class="box-header">
  				ISI NILAI MATRIKS
  			</div>
  			<div class="box-body">
          <form method="POST" action="">
          <div class="col-lg-4">
                <select name="id_alt" class="form-control text-center">
                <?php
                $s=mysqli_query($conn,"select * from alternatif");
                while($q=mysqli_fetch_assoc($s)){
                ?>
                
                  <option value="<?php echo $q['id_alternatif'] ?>"><?php echo $q['id_alternatif']." | ".$q['nm_alternatif'] ?></option>
                <?php
                }
                ?>
                </select>
              </div>
              <?php
                $i=1;
                $alt=mysqli_query($conn,"select * from kriteria");
            //hitung jml kriteria   
            $jml_krit=mysqli_num_rows($alt);    
                
                while($dalt=mysqli_fetch_assoc($alt)){
                ?>
            <div class="form-group">
              <label><?php echo $dalt['nama_kriteria']; ?></label>
              <input type="hidden" name="id_krite<?php echo $i; ?>" value="<?php echo $dalt['id_kriteria']; ?>" />
               <input type="text" name="nilai<?php echo $i; ?>" value="<?php echo $dalt['poin_kriteria']; ?>"class="input-control" required/><br>
            </div>
                 
            <?php
                $i++;
                }
                ?>

            <br>
            <input type="submit" name="simpan" value="Simpan" class="btn btn-blue">
          </form>
          <?php
$b=mysqli_query($conn,"select * from kriteria");
$c=mysqli_fetch_assoc($b);



if(isset($_POST['simpan'])){
 
$o=1;

//cek id alternatif
$id_alte=$_POST['id_alt'];
$cek=mysqli_query($conn,"select * from alternatif where id_alternatif='$id_alte'");
$cek_l=mysqli_num_rows($cek);
if($cek_l>0){
  $del=mysqli_query($conn,"delete from nilai_matrik where id_alternatif='$id_alte'");
}

for($n=1;$n<=$jml_krit;$n++){
  $id_k=$_POST['id_krite'.$o];
   $nilai_k=$_POST['nilai'.$o];
  
  
  $m=mysqli_query($conn,"insert into nilai_matrik (id_alternatif,id_kriteria,nilai) values('$_POST[id_alt]','$id_k','$nilai_k')");
  
    if($m){
       // echo "OK <br>";
    }
    
  $o++;
}

}
?>      
  			</div>
  		</div>
  	</div>

<?php include'footer.php' ?>