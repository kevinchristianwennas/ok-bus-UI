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
                    <div class="row content detailpenawaran">
                        <h4>Detail Penawaran</h4>
                        <div class="buttonpenawaran">
                            <a class="waves-effect waves-light blueok btn buttondaftarpenawaran" href="pembayaran">
                            Pilih Penawaran</a>
                        </div>


                        <div class="row datapenawaran">
                            <div class="col 12">
                                <div>
                                    <p class="texttitle">Nama PO</p>
                                    <p>PT Bus Sehat Indonesia</p>
                                </div>
                                <div class="divider"></div>
                                <div>
                                    <p class="texttitle">Tipe</p>
                                    <p>Pulang-Pergi</p>
                                </div>
                                <div class="divider"></div>
                                <div>
                                    <p class="texttitle">Keterangan</p>
                                    <div class="row">
                                        <div class="row keterangan-item">
                                            <div class="col s2 keterangan-title">
                                                <p>Dari</p>
                                            </div>
                                            <div class="col s10">
                                                <p>Jalan H. Misan No. 53 RT 09 RW 09 Pasir Gunung Selatan, Cimanggis, Depok</p>
                                            </div>
                                            <div class="col s2 keterangan-title">
                                                <p>Waktu</p>
                                            </div>
                                            <div class="col s10">
                                                <p>13 Maret 2016 | 16:00</p>
                                            </div>
                                        </div>

                                        <div class="row keterangan-item">
                                            <div class="col s2 keterangan-title">
                                                <p>Ke</p>
                                            </div>
                                            <div class="col s10">
                                                <p>Fakultas Ilmu Komputer UI, Depok</p>
                                            </div>
                                            <div class="col s2 keterangan-title">
                                                <p>Waktu</p>
                                            </div>
                                            <div class="col s10">
                                                <p>14 Maret 2016 | 13:00</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="divider"></div>

                                <div>
                                    <p class="texttitle">Harga Penawaran</p>
                                    <div class="row">
                                        <table class="striped">
                                            <thead>
                                              <tr>
                                                  <th data-field="id">Bus</th>
                                                  <th data-field="name">Jumlah</th>
                                                  <th data-field="price">Harga</th>
                                              </tr>
                                            </thead>

                                            <tbody>
                                              <tr>
                                                <td>Bus 50 seats</td>
                                                <td>1</td>
                                                <td>Rp2.000.000</td>
                                              </tr>
                                              <tr>
                                                <td>Bus 35 seats</td>
                                                <td>2</td>
                                                <td>Rp3.200.000</td>
                                              </tr>
                                              
                                              <tr>
                                                  <td colspan="2"><b>Total</b></td>
                                                  <td>Rp5.200.000</td>
                                              </tr>

                                            </tbody>
                                          </table>
                                    </div>
                                </div>

                                <div class="divider"></div>

                                <div >
                                    <p class="texttitle">Fasilitas</p>
                                    <div class="row">
                                        <ol>
                                            <li>AC</li>
                                            <li>Stop kontak</li>
                                            <li>TV</li>
                                        </ol>
                                    </div>
                                </div>

                                <div class="divider"></div>

                                <div >
                                    <p class="texttitle">Kontak</p>
                                    <div class="row">
                                        <table class="striped">
                                            <thead>
                                              <tr>
                                                  <th data-field="id">Bus</th>
                                                  <th data-field="name">Supir</th>
                                              </tr>
                                            </thead>

                                            <tbody>
                                              <tr>
                                                <td>Bus 50 seats</td>
                                                <td>Joko - 0812345678</td>
                                              </tr>
                                              <tr>
                                                <td>Bus 35 seats</td>
                                                <td>Budi - 0812345678</td>
                                              </tr>

                                            </tbody>
                                          </table>
                                    </div>
                                </div>

                                <div class="divider"></div>

                                <div >
                                    <p class="texttitle">Notes</p>
                                    <div class="row">
                                        Harga yang ditawarkan terlalu rendah untuk fasilitas yang diinginkan, 
                                        saya tidak kasih TV, tapi harganya bisa sesuai yang Anda minta.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="app-footer.jsp" %>
        
    </body>
  </html>