<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">

         <!-- for ios 7 style, multi-resolution icon of 152x152 --> 
         <meta name="apple-mobile-web-app-capable" content="yes"> <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent"> <link rel="apple-touch-icon" href="img/okbus-icon.png"> 
         <!-- for Chrome on Android, multi-resolution icon of 196x196 --> 
         <meta name="mobile-web-app-capable" content="yes"> <link rel="shortcut icon" sizes="196x196" href='<c:url value="/resources/img/okbus-icon.png"/>'>
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="minimal-ui, width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        
        <link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/okbus.css"/>'>

        <title>Ok-Bus</title>
    </head>

    <body>
        <ul id="dropdownmasuk" class="dropdown-content">
            <li><a href="signup.html">Daftar</a></li>
            <li class="divider"></li>
            <li><a href="signin.html">Masuk</a></li>
        </ul>
        <nav>
            <div class="nav-wrapper">
                <a href="/okbus" class="brand-logo center"><img src='<c:url value="/resources/img/logo.png"/>' class="responsive-img"></a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="#">Tentang</a></li>
                    <li><a href="#">Layanan</a></li>
                    <li><a href="#">FAQ</a></li>
                    <li><a class="dropdown-button" href="#" data-activates="dropdownmasuk">Masuk<i class="material-icons right">arrow_drop_down</i></a></li>
                </ul>
                <ul id="slide-out" class="side-nav">
                    <li><a href="#">Tentang</a></li>
                    <li><a href="#">Layanan</a></li>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="signup.html">Daftar</a></li>
                    <li><a href="signin.html">Masuk</a></li>
                </ul>
                <a href="#" data-activates="slide-out" class="button-collapse right"><i class="material-icons menusamping">menu</i></a>
            </div>
        </nav>

        <div class="container">
            <div class="row home">
                <!-- main section -->
                <div class="col m10 push-m1 main section">
                    <div class="main-text">
                        <h3>Pesan Bus jadi Mudah</h3>
                        <p>Pesan bus dengan fasilitas yang Anda inginkan. Dapatkan banyak penawaran dan tentukan harga yang sesuai dengan kebutuhan Anda.</p>
                        <a class="waves-effect waves-light btn blueok" href="signin">Pesan</a>
                    </div>
                </div>

                <!-- perbedaan section -->
                <div class="col m10 push-m1 perbedaan section">
                    <h3>Perbedaan Kami</h3>
                    <div class="row perbedaan-item">
                        <div class="left col m2 s3">
                            <img src='<c:url value="/resources/img/placeholder.png" />' class="responsive-img">
                        </div>
                        <div class="right col m10 s9">
                            <h5>Banyak Pilihan Bus</h5>
                            <p>Anda akan menerima banyak penawaran bus dari PO yang terdaftar pada sistem kami.</p>
                        </div>
                    </div>
                    <div class="row perbedaan-item">
                        <div class="left col m2 s3">
                            <img src='<c:url value="/resources/img/placeholder.png" />' class="responsive-img">
                        </div>
                        <div class="right col m10 s9">
                            <h5>Banyak Pilihan Bus</h5>
                            <p>Anda akan menerima banyak penawaran bus dari PO yang terdaftar pada sistem kami.</p>
                        </div>
                    </div>
                    <div class="row perbedaan-item">
                        <div class="left col m2 s3">
                            <img src='<c:url value="/resources/img/placeholder.png" />' class="responsive-img">
                        </div>
                        <div class="right col m10 s9">
                            <h5>Banyak Pilihan Bus</h5>
                            <p>Anda akan menerima banyak penawaran bus dari PO yang terdaftar pada sistem kami.</p>
                        </div>
                    </div>
                </div>

                <!-- cara kerja section -->
                <div class="col m10 push-m1 carakerja section">
                    <h3>Cara Kerja</h3>
                    <div class="row carakerja-item">
                        <div class="left col m2 s3">
                            <img src='<c:url value="/resources/img/placeholder.png" />' class="responsive-img">
                        </div>
                        <div class="right col m10 s9">
                            <h5>Buat Pemesanan Bus Baru</h5>
                            <p>Permintaan bus yang masuk akan dilihat oleh PO bus yang terdaftar. Setiap pemesanan akan mendapatkan penawaran bus dari PO dalam 30 menit.</p>
                        </div>
                    </div>
                    <div class="row carakerja-item">
                        <div class="left col m2 s3">
                            <img src='<c:url value="/resources/img/placeholder.png" />' class="responsive-img">
                        </div>
                        <div class="right col m10 s9">
                            <h5>Pilih Penawaran yang Sesuai</h5>
                            <p>Tentukan penawaran yang paling sesuai dengan budget yang Anda miliki. PO bus akan berkompetisi memberikan fasilitas dan harga yang terbaik.</p>
                        </div>
                    </div>
                    <div class="row carakerja-item">
                        <div class="left col m2 s3">
                            <img src='<c:url value="/resources/img/placeholder.png" />' class="responsive-img">
                        </div>
                        <div class="right col m10 s9">
                            <h5>Selesaikan Pembayaran</h5>
                            <p>Selesaikan pembayaran dan konfirmasi pemesanan bus Anda dalam 3x24 jam.</p>
                        </div>
                    </div>
                </div>

                <!-- footer section -->
                <div class="col m10 push-m1">
                    
                </div>
            </div>
        </div>


        <!-- FOOTER -->
        <footer class="page-footer">
          <div class="container">
            <div class="row">
              <div class="col s12">
                <img src='<c:url value="/resources/img/logo.png" />' class="responsive-img logo-footer">
                <p class="grey-text text-darken-4">Ok-Bus merupakan aplikasi pemesanan bis online.</p>
              </div>
              <div class="col s12">
                <h5 class="white-text">Links</h5>
                <ul>
                  <li><a class="grey-text text-darken-4" href="#!">Tentang</a></li>
                  <li><a class="grey-text text-darken-4" href="#!">Layanan</a></li>
                  <li><a class="grey-text text-darken-4" href="#!">FAQ</a></li>
                  <li><a class="grey-text text-darken-4" href="#!">Daftar sebagai PO Bus</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container grey-text text-darken-4">
                &copy; 2016 LAW
                <a class="grey-text text-darken-4 right" href="#!">KunJun</a>
            </div>
          </div>
        </footer>

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>

        <script type="text/javascript" src='<c:url value="/resources/js/okbus.js"></c:url>'></script>
    </body>
  </html>