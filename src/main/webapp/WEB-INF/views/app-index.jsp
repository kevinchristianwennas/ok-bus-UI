<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
    <head>
        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="minimal-ui, width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

         <!-- for ios 7 style, multi-resolution icon of 152x152 --> 
         <meta name="apple-mobile-web-app-capable" content="yes"> <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent"> <link rel="apple-touch-icon" href='<c:url value="/resources/img/okbus-icon.png"/>'> 
         <!-- for Chrome on Android, multi-resolution icon of 196x196 --> 
         <meta name="mobile-web-app-capable" content="yes"> <link rel="shortcut icon" sizes="196x196" href='<c:url value="/resources/img/okbus-icon.png"/>'>

        <link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/okbus.css"/>'>
        <title>Ok-Bus</title>
    </head>

    <body>

        <div class="navbar-fixed">
            <nav>
                <div class="nav-wrapper">
                    <a href="/okbus/app-index.html" class="brand-logo center"><img src='<c:url value="/resources/img/logo.png"/>' class="responsive-img"></a>
                    <ul id="slide-out" class="side-nav">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Pesan Bus</a></li>
                        <div class="divider"></div>
                        <li><a href="#">Tentang</a></li>
                        <li><a href="#">Layanan</a></li>
                        <li><a href="#">FAQ</a></li>
                        <div class="divider"></div>
                        <li><a href="signup.html">Logout</a></li>
                    </ul>
                    <a href="#" data-activates="slide-out" class="button-collapse right"><i class="material-icons menusamping">menu</i></a>
                </div>
            </nav>
        </div>
        <div class="container containerapp">
            <div class="row app">

                <!-- LEFT PART || WILL BE DISSAPEAR IN MOBILE -->
                <div class="leftok col m4">

                    <div class="row profile">
                        <div class="col s12">
                            <div class="row identitas">
                                <img src='<c:url value="/resources/img/Go.jpg"/>' class="responsive-img">
                                <span>Gohan Parningotan</span>
                            </div>

                            <div class="row status">
                                <div class="pemesanan col s12">
                                    <img src='<c:url value="/resources/img/pemesanan.png"/>'>
                                    <span>2 pesanan aktif</span>
                                </div>
                                <div class="penawaran col s12">
                                    <img src='<c:url value="/resources/img/penawaran.png"/>'>
                                    <span>10 penawaran baru
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row pesanbus">
                        <div class="col s12">
                            <a class="waves-effect waves-light btn blueok" href="app-pesanbus.html">Pesan Bus</a>
                        </div>
                    </div>

                </div>

                <!-- RIGHT PART || THE ONLY PART DISPLAYED IN MOBILE -->
                <div class="rightok col m8 s12">
                    <div class="row content">
                        <div class="row content-wrapper">
                            <!-- TABS -->
                            <div class="col s12">
                                <ul class="tabs">
                                    <li class="tab col s6"><a class="active" href="#onprogress">On Progress</a></li>
                                    <li class="tab col s6"><a class href="#completed">Completed</a></li>
                                </ul>
                            </div>

                            <!-- TABS DATA FOR ON PROGRESS -->
                            <div id="onprogress" class="col s12">
                                <div class="row order-item">

                                    <!-- Direction Information -->
                                    <div class="order-item-top row">
                                        <div class="col m3 s3 status-img">
                                            <img src='<c:url value="/resources/img/status-paid.png"/>' class="responsive-img" alt="">
                                        </div>
                                        <div class="col m9 s9 direction-information">
                                            <div class="row">
                                                <div class="s12 direction">
                                                    <div class="">
                                                        <img src='<c:url value="/resources/img/dari-icon.png"/>' class="direction-icon" alt="">
                                                    </div>
                                                    <div class="col s11 text">
                                                        <p>Jalan H. Misan No.53 </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="s12 direction">
                                                    <div class="">
                                                        <img src='<c:url value="/resources/img/ke-icon.png"/>' class="direction-icon" alt="">
                                                    </div>
                                                    <div class="col s11 text">
                                                        <p>Fakultas Ilmu Komputer, UI </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Date & Bus Information -->
                                    <div class="order-item-bottom row">
                                        <div class="col s7 date">
                                            <p class="hari">13 Maret 2016</p>
                                            <p class="jam">10.05</p>
                                        </div>
                                        <div class="col s5 businfo">
                                            <p>10</p>
                                            <img src='<c:url value="/resources/img/bus-only.png"/>'>
                                        </div>
                                    </div>
                                </div>




                                <div class="row order-item">

                                    <!-- Direction Information -->
                                    <div class="order-item-top row">
                                        <div class="col m3 s3 status-img">
                                            <img src='<c:url value="/resources/img/status-waiting.png"/>' class="responsive-img" alt="">
                                        </div>
                                        <div class="col m9 s9 direction-information">
                                            <div class="row">
                                                <div class="s12 direction">
                                                    <div class="">
                                                        <img src='<c:url value="/resources/img/dari-icon.png"/>' class="direction-icon" alt="">
                                                    </div>
                                                    <div class="col s11 text">
                                                        <p>Jalan H. Misan No.53 </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="s12 direction">
                                                    <div class="">
                                                        <img src='<c:url value="/resources/img/ke-icon.png"/>' class="direction-icon" alt="">
                                                    </div>
                                                    <div class="col s11 text">
                                                        <p>Fakultas Ilmu Komputer, UI </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Date & Bus Information -->
                                    <div class="order-item-bottom row">
                                        <div class="col s7 date">
                                            <p class="hari">13 Maret 2016</p>
                                            <p class="jam">10.05</p>
                                        </div>
                                        <div class="col s5 businfo">
                                            <p>10</p>
                                            <img src='<c:url value="/resources/img/bus-only.png"/>'>
                                        </div>
                                    </div>
                                </div>

                            <!-- TABS DATA FOR COMPLETED -->
                            <div id="completed" class="col s12">
                                <div class="row order-item">

                                    <!-- Direction Information -->
                                    <div class="order-item-top row">
                                        <div class="col m3 s3 status-img">
                                            <img src='<c:url value="/resources/img/status-completed.png"/>' class="responsive-img" alt="">
                                        </div>
                                        <div class="col m9 s9 direction-information">
                                            <div class="row">
                                                <div class="s12 direction">
                                                    <div class="">
                                                        <img src='<c:url value="/resources/img/dari-icon.png"/>' class="direction-icon" alt="">
                                                    </div>
                                                    <div class="col s11 text">
                                                        <p>Jalan H. Misan No.53 </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="s12 direction">
                                                    <div class="">
                                                        <img src='<c:url value="/resources/img/ke-icon.png"/>' class="direction-icon" alt="">
                                                    </div>
                                                    <div class="col s11 text">
                                                        <p>Fakultas Ilmu Komputer, UI </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Date & Bus Information -->
                                    <div class="order-item-bottom row">
                                        <div class="col s7 date">
                                            <p class="hari">13 Maret 2016</p>
                                            <p class="jam">10.05</p>
                                        </div>
                                        <div class="col s5 businfo">
                                            <p>10</p>
                                            <img src='<c:url value="/resources/img/bus-only.png"/>'>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <a class="btn-floating btn-large waves-effect waves-light blueok pesanbusFAB" href="addOrder"><i class="material-icons">add</i></a>

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>

        <script type="text/javascript" src='<c:url value="/resources/js/okbus.js"/>'></script>
    </body>
  </html>