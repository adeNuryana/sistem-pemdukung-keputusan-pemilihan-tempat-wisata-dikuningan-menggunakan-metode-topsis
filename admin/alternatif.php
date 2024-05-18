<?php include 'header.php' ?>

  <!-- konten-->
  <div class="content">
  	
  	<div class="container">
  		<div class="box">
  			<div class="box-header">
  				Tempat Wisata
  			</div>
  			<div class="box-body">
          <a href="tambah-alternatif.php" class="text-green"><i class="fa fa-plus"></i>Tambah</a>
          <?php 
            if (isset($_GET['succes'])) {
              echo"<div class='alert alert-succes'>".$_GET['succes']."</div>";
            }
           ?>
          <form action="">
            <div class="input-group">
              <input type="text" name="key" placeholder="Pencarian">
              <button type="submit"><i class="fa fa-search"></i></button>
            </div>
          </form>

  				<table class="table">
           <thead>
             <tr>
               <th>No</th>
               <th>Nama</th>
               <th>Keterangan</th>
               <th>Gambar</th>
               <th>Aksi</th>
             </tr>
           </thead>
           <tbody>
            <?php
              $where = "WHERE 1=1";
              if (isset($_GET['key'])) {
                $where .= " AND nm_alternatif LIKE '%".addslashes($_GET['key'])."%' ";
              }
              $alternatif = mysqli_query($conn, "SELECT * FROM alternatif $where ORDER BY id_alternatif ASC");
              if(mysqli_num_rows($alternatif)>0){
                while($p = mysqli_fetch_array($alternatif)) {
            ?>
             <tr>
               <td> <?= $p['id_alternatif'] ?> </td>
               <td><?= $p['nm_alternatif'] ?></td>
               <td><?= $p['keterangan'] ?></td>
               <td><img src="../uploads/alternatif/<?= $p['gambar'] ?>" width="100px"></td>
               <td>
                 <a href="edit-alternatif.php?id=<?= $p['id_alternatif'] ?>" title="Edit Data" class="text-orange"><i class="fa fa-edit"></i></a> 
                 <a href="hapus.php?idalternatif=<?= $p['id_alternatif'] ?>" onclick="return confirm('Yakin Ingin Dihapus ?')" title="Hapus Data" class="text-red"><i class="fa fa-times"></i></a>
               </td>
             </tr>
           <?php }
         }else{ ?>
              <tr>
                <td colspan="5">Data Tidak Ada</td>
              </tr>
           <?php } ?>

           </tbody>    
          </table>
  			</div>
  		</div>
  	</div>
  </div>

<?php include'footer.php' ?>