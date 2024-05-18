<?php include 'header.php' ?>

  <!-- konten-->
  <div class="content">
    
    <div class="container">
      <div class="box">
        <div class="box-header">
          kriteria
        </div>
        <div class="box-body">
          <a href="tambah-kriteria.php" class="text-green"><i class="fa fa-plus"></i>Tambah</a>
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
               <th>NO</th>
               <th>Nama kriteria</th>
               <th>bobot</th>
               <th>sifat</th>
               <th>Aksi</th>
             </tr>
           </thead>
           <tbody>
            <?php
            $no = 1;


              $where = "WHERE 1=1";
              if (isset($_GET['key'])) {
                $where .= " AND nama_kriteria LIKE '%".addslashes($_GET['key'])."%' ";
              }
              $kriteria = mysqli_query($conn, "SELECT * FROM kriteria $where ORDER BY id_kriteria DESC");
              if(mysqli_num_rows($kriteria)>0){
                while($p = mysqli_fetch_array($kriteria)) {
            ?>
             <tr>
               <td> <?= $no++ ?> </td>
               <td><?= $p['nama_kriteria'] ?></td>
               <td><?= $p['bobot'] ?></td>
               <td><?= $p['sifat'] ?></td>
               <td>
                 <a href="edit-kriteria.php?id=<?= $p['id_kriteria'] ?>" title="Edit Data" class="text-orange"><i class="fa fa-edit"></i></a> 
                 <a href="hapus.php?idkriteria=<?= $p['id_kriteria'] ?>" onclick="return confirm('Yakin Ingin Dihapus ?')" title="Hapus Data" class="text-red"><i class="fa fa-times"></i></a>
               </td>
             </tr>
           <?php }}else{ ?>
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