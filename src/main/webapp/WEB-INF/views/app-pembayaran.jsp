<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

			KOOOONJOOON WAS HERE 

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!DOCTYPE html>
  <html>
    <%@include file="head.jsp" %>

    <body>
        <%@include file="app-navbar.jsp" %>

        <div class="container containerapp">
            <div class="row app">

                <%@include file="app-profile-left.jsp" %>

                <!-- RIGHT THE ONLY PART DISPLAYED IN MOBILE -->
                <div class="rightok col m8 s12">
                    <div class="row content detail-pembayaran">
                        <h4>Pembayaran</h4>

                        <div class="row datapembayaran">
                            <div class="row">
                                <table class="striped">
                                    <tbody>
                                        <tr>
                                            <td>Bus 58 seats</td>
                                            <td>2</td>
                                            <td>Rp2.000.000</td>
                                        </tr>
                                        <tr>
                                            <td>Mini Bus Elf</td>
                                            <td>1</td>
                                            <td>Rp2.000.000</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><b>Total</b></td>
                                            <td>Rp4.000.000</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="divider"></div>

                            <div class="row rekening">
                                <p class="texttitle">Rekening</p>
                                <p>Transfer tepat <b>Rp4.000.000</b> ke rekening di bawah ini :</p>

                                <div class="rekening-detail">
                                    <b><p>Bank Mandiri</p></b>
                                    <p>a.n. PT Ok-Bus Indonesia</p>
                                    <p>100000 00 5231</p>
                                </div>

                                <div class="keterangan">
                                    Transaksi akan dibatalkan jika pembayaran tidak dilakukan sebelum 3x24 jam.
                                </div>
                            </div>

                            <div class="divider"></div>

                            <div class="row kontak">
                                <p class="texttitle">Kontak</p>
                                <p>PT Bus Sehat</p>
                                <p>080989999</p>
                                <p>bussehat@gmail.com</p>
                            </div>

                            <div class="divider"></div>

                            <div class="row konfirmasi">
                                <p class="texttitle">Konfirmasi</p>
                                <p>Konfirmasi pembayaran Anda serta lampiran bukti pembayaran ke konfimasi@okbus.com dan kami akan memverifikasi pembayaran Anda secepatnya.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="app-footer.jsp" %>
    </body>
  </html>