<?php $this->load->view('vendor/inc/header.php'); ?>
<?php $this->load->view('vendor/inc/sidebar.php'); ?>
<?php $this->load->view('vendor/inc/topbar.php'); ?>

<!-- Container Fluid-->
<div class="container-fluid" id="container-wrapper">
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    <ol class="breadcrumb">
      <li class="breadcrumb-item active" aria-current="page"><a href="<?= site_url('vendor/dashboard'); ?>">Dashboard</a></li>
    </ol>
  </div>

  <!-- DATA ANGGOTA -->
  <?php foreach($jumlahAnggota as $data) { ?>
  <div class="row mb-3">
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card h-100">
        <div class="card-body">
          <div class="row align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-uppercase mb-1">Data Anggota</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $data->totalanggota; ?></div>
              <div class="mt-2 mb-0 text-muted text-xs">
                <a href="<?= site_url('vendor/data-anggota'); ?>"><span>Selengkapnya </span> <i class="fas fa-chevron-right"></i></a>
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-users fa-2x text-info"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    <?php } ?>
    <!-- DATA DIVISI -->
    <?php foreach($jumlahDivisi as $data) { ?>
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card h-100">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-uppercase mb-1">Data Divisi</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $data->totaldivisi; ?></div>
              <div class="mt-2 mb-0 text-muted text-xs">
                <a href="<?= site_url('vendor/data-divisi'); ?>"><span>Selengkapnya </span> <i class="fas fa-chevron-right"></i></a>
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-building fa-2x text-success"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    <?php } ?>
    <!-- DATA ADMINISTRATOR -->
    <?php foreach($jumlahUser as $data) { ?>
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card h-100">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-uppercase mb-1">Data Administrator</div>
              <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?php echo $data->totaluser; ?></div>
              <div class="mt-2 mb-0 text-muted text-xs">
                <a href="<?= site_url('vendor/data-user'); ?>"><span>Selengkapnya </span> <i class="fas fa-chevron-right"></i></a>
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-user fa-2x text-warning"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    <?php } ?>
    <!-- DATA APA AJA -->
    <!-- <div class="col-xl-3 col-md-6 mb-4">
      <div class="card h-100">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-uppercase mb-1">CARD BELUM DIKETAHUI</div>
              <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">100</div>
              <div class="mt-2 mb-0 text-muted text-xs">
                <a href=""><span>Selengkapnya </span> <i class="fas fa-chevron-right"></i></a>
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-user fa-2x text-danger"></i>
            </div>
          </div>
        </div>
      </div>
    </div> -->
    
    

      
  </div>
  <!--Row-->

</div>
<!---Container Fluid-->

<?php $this->load->view('vendor/inc/footer.php'); ?>