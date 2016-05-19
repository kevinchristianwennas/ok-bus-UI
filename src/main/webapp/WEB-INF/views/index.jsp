<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

			KOOOONJOOON WAS HERE 

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <%@include file="head.jsp" %>
	
    <body>
    <%@include file="navbar.jsp" %>

        <!-- main section -->
                <div class="main section">
                    <div class="main-text">
                        <h3>Pesan Bus jadi Mudah</h3>
                        <p>Bus terbaik dengan harga terbaik melalui satu aplikasi.</p>
                        <a class="waves-effect waves-light btn blueok" href="signin">Pesan</a>
                    </div>
                </div>

        <div class="container">
            <div class="row home">
                <!-- perbedaan section -->
                <div class="col m10 push-m1 perbedaan section">
                    <h3>Perbedaan Kami</h3>
                    <div class="row perbedaan-item">
                        <div class="left col m2 s3">
                            <img src='<c:url value="/resources/img/icon/icon-bus.png"/>' class="responsive-img">
                        </div>
                        <div class="right col m10 s9">
                            <h5>Banyak Pilihan Bus</h5>
                            <p>Anda akan menerima banyak penawaran bus dari PO yang terdaftar pada sistem kami.</p>
                        </div>
                    </div>
                    <div class="row perbedaan-item">
                        <div class="left col m2 s3">
                            <img src='<c:url value="/resources/img/icon/icon-pembayaran.png"/>' class="responsive-img">
                        </div>
                        <div class="right col m10 s9">
                            <h5>Harga Lebih Murah</h5>
                            <p>PO bus akan memberikan harga yang bersaing dan Anda akan menentukan layanan yang paling sesuai dengan budget Anda.</p>
                        </div>
                    </div>
                </div>

                <div class="col m10 push-m1 divider-home"></div>

                <!-- cara kerja section -->
                <div class="col m10 push-m1 carakerja section">
                    <h3>Cara Kerja</h3>
                    <div class="row carakerja-item">
                        <div class="left col m2 s3">
                            <img src='<c:url value="/resources/img/icon/icon-cari.png"/>' class="responsive-img">
                        </div>
                        <div class="right col m10 s9">
                            <h5>Buat Pemesanan Bus Baru</h5>
                            <p>Permintaan bus yang masuk akan dilihat oleh PO bus yang terdaftar. Setiap pemesanan akan mendapatkan penawaran bus dari PO dalam 30 menit.</p>
                        </div>
                    </div>
                    <div class="row carakerja-item">
                        <div class="left col m2 s3">
                            <img src='<c:url value="/resources/img/icon/icon-pesan.png"/>' class="responsive-img">
                        </div>
                        <div class="right col m10 s9">
                            <h5>Pilih Penawaran yang Sesuai</h5>
                            <p>Tentukan penawaran yang paling sesuai dengan budget yang Anda miliki. PO bus akan berkompetisi memberikan fasilitas dan harga yang terbaik.</p>
                        </div>
                    </div>
                    <div class="row carakerja-item">
                        <div class="left col m2 s3">
                            <img src='<c:url value="/resources/img/icon/icon-bayar.png"/>' class="responsive-img">
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
	
	<%@include file="footer.jsp" %>

    </body>
  </html>