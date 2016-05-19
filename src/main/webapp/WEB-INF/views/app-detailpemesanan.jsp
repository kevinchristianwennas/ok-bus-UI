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
                    <div class="row content detailpemesanan">
                        <h4>Detail Pemesanan</h4>
                        <div class="row topbutton">
                            <div class="col s12 actionpemesanan">
                                <a class="waves-effect waves-light blueok btn buttondaftarpenawaran col m4 offset-m3 s7 offset-s1" href="penawaran">
                                    10 Penawaran</a>
                                <a class="waves-effect waves-light blueok btn buttoncancel col m2 s3" href="#">
                                    Cancel</a>
                            </div>
                        </div>

                        <div class="row datapemesanan">
                            <div class="col 12">

                                <div>
                                    <p class="texttitle">Status</p>
                                    <div class="status-label row">
                                        <p class="left">paid</p>
                                    </div>
                                </div>

                                <div class="divider"></div>
                                
                                <div>
                                    <p class="texttitle">Tipe</p>
                                    <p>Pulang-pergi</p>
                                </div>
                                
                                <div class="divider"></div>
                                
                                <div>
                                    <p class="texttitle">Pesanan Bus</p>
                                    <div class="row">
                                        <table class="striped">
                                            <thead>
                                                <tr>
                                                    <th data-field="tipe">Tipe</th>
                                                    <th data-field="jumlah">Jumlah</th>
                                                    <th data-field="budget">Budget</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Bus 50 seats</td>
                                                    <td>1</td>
                                                    <td>Rp1.000.000</td>
                                                </tr>
                                                <tr>
                                                    <td>Bus 35 seats</td>
                                                    <td>2</td>
                                                    <td>Rp1.200.000</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    
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
                                                <p>13 Maret 2016 - 16:00</p>
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
                                                <p>14 Maret 2016 - 13:00</p>
                                            </div>
                                        </div>
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
                                        <p>083873099622</p>
                                    </div>
                                </div>

                                <div class="divider"></div>

                                <div >
                                    <p class="texttitle">Penawaran Dipilih</p>
                                    <div class="row">
                                        <p>(belum memilih)</p>
                                    </div>
                                </div>

                                <div class="divider"></div>


                                <div>
                                    <p class="texttitle">Harga Final</p>
                                    <div class="row">
                                        <table class="striped">
                                            <thead>
                                              <tr>
                                                  <th data-field="bus">Bus</th>
                                                  <th data-field="jumlah">Jumlah</th>
                                                  <th data-field="harga">Harga</th>
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

                                    <p class="mini-text">*Harga final merupakan harga yang diajukan oleh pihak bus dan disetujui pemesan.</p>
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