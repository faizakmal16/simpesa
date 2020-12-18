</div>
    </section>
     <!-- ======= Services Section ======= -->
     <section id="services" class="section-bg">
      <div class="container" data-aos="fade-up">

        <header class="section-header">
        <h3>Badan Usaha</h3>
         
        </header>

        <div class="row justify-content-center">

          <div class="col" data-aos="zoom-in" data-aos-delay="100">
        
    
    <br>
    <div class='table-responsive'>
    <table class='table table-hover table-bordered' style="background-color: white;">
    <thead>
      <tr>
      <th>No</th>
    <th>Usaha</th> 
<th>Pemilik</th> 
<th>Alamat</th> 
<th>Provinsi</th> 
<th>Kabupaten/kota</th> 
<th>kecamatan</th> 
<th>Kategori </th> 
<th>Bentuk usaha</th>
<th>Jumlah Tenaga Kerja</th> 
<th>Nilai Produksi</th> 
<th>Status</th> 


 
      </tr>
      </thead>
      <tbody>
    <?php
      $query = mysqli_query(Connect(),"SELECT * FROM badan_usaha JOIN rencana_usaha USING(id)");

      $no = 1;
      if($query){
      while($data = mysqli_fetch_array($query)){
        echo "<tr>";
        echo "<td>".$no++."</td>"; 
echo "<td>".$data['nama_usaha']."</td>"; 
echo "<td>".$data['pemilik_usaha']."</td>"; 
echo "<td>".$data['alamat']."</td>"; 
echo "<td>".$data['provinsi']."</td>"; 
echo "<td>".$data['kota']."</td>"; 
echo "<td>".$data['kecamatan']."</td>"; 
echo "<td>".$data['kategori_usaha']."</td>"; 
echo "<td>".$data['bentuk_usaha']."</td>"; 
echo "<td>".$data['jumlah_tenaga_kerja']."</td>"; 
echo "<td>".$data['nilai_produksi']."</td>"; 
echo "<td><font color='green'>".$data['status']."</font></td>"; 


       
    }
  }
      ?>
      

    </tbody>
    </table>
    </div>
          </div>

      </div>
    </section><!-- End Services Section -->

  
     <!-- ======= Contact Section ======= -->
     <section id="contact">
      <div class="container-fluid" data-aos="fade-up">

        <div class="section-header">
          <h3>Produk</h3>
        </div>
        <div class="row justify-content-center">

<div class="col-md-10" data-aos="zoom-in" data-aos-delay="100">

          <div class='table-responsive'>
    <table class='table table-hover table-sm'>
    <thead>
      <tr>
      <th>No</th>
      <th>Nama Usaha</th> 
      <th>Pemilik Usaha</th> 
    <th>Produk</th> 
<th>Satuan</th> 
<th>Harga</th> 



      </tr>
      </thead>
      <tbody>
    <?php
    $query = mysqli_query(Connect(),"SELECT * FROM produk INNER JOIN badan_usaha ON produk.id_pengguna = badan_usaha.id  ");

    $no = 1;
    if($query){
    while($data = mysqli_fetch_array($query)){
        echo "<tr>";
        echo "<td>".$no++."</td>"; 
        echo "<td>".$data['nama_usaha']."</td>"; 
        echo "<td>".$data['pemilik_usaha']."</td>"; 
echo "<td>".$data['produk']."</td>"; 
echo "<td>".$data['satuan']."</td>"; 
echo "<td>Rp.".$data['harga_satuan']."</td>"; 



      
    }
  }
      ?>
      

    </tbody>
    </table>

        </div>
        </div>

      </div>
    </section><!-- End Contact Section -->
  </main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer">
  <div class="footer-top">
    <div class="container">
      <div class="row">

        <div class="col-lg-4 col-md-6 footer-info">
          <h3>Simpesa</h3>
          <p>Merupakan media informasi elektronik satu pintu meliputi penyimpanan dan pengelolaan informasi serta mekanisme penyampaian informasi dari penyelenggara pelayanan publik untuk perizinan usaha</p>
        </div>

        <div class="col-lg-2 col-md-6 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Terms of service</a></li>
            <li><a href="#">Privacy policy</a></li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 footer-contact">
          <h4>Contact Us</h4>
          <p>
            Mataram <br>
            Nusa Tengara Barat (NTB)<br>
            Indonesia<br>
            <strong>Phone:</strong> +1 5589 55488 55<br>
            <strong>Email:</strong> info@simpesa.com<br>
          </p>

          <div class="social-links">
            <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
            <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
            <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
            <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
            <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
          </div>

        </div>

        <div class="col-lg-3 col-md-6 footer-newsletter">
          <h4>Subscribe</h4>
          <p>Masukkan email anda untuk mengikuti berita dan informasi dari kami</p>
          <form action="" method="post">
            <input type="email" name="email"><input type="submit" value="Subscribe">
          </form>
        </div>

      </div>
    </div>
  </div>

  <div class="container">
    <div class="copyright">
      &copy; Copyright <strong>SIMPESA</strong>. All Rights Reserved 2020
    </div>
    <div class="credits">
      <!--
      All the links in the footer should remain intact.
      You can delete the links only if you purchased the pro version.
      Licensing information: https://bootstrapmade.com/license/
      Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=NewBiz
    -->
      
    </div>
  </div>
</footer><!-- End Footer -->

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

<!-- Vendor JS Files -->
<script src="assets/vendor/jquery/jquery.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>
<script src="assets/vendor/counterup/counterup.min.js"></script>
<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
<script src="assets/vendor/venobox/venobox.min.js"></script>
<script src="assets/vendor/aos/aos.js"></script>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>

</body>

</html>