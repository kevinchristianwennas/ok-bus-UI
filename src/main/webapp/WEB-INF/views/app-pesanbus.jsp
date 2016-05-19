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
                    <div class="row content pemesananbus">
                        <div class="row">
                            <h4>Pemesanan Bus</h4>
                            <form action="app-index.html" method="post" class="formpemesanan">
                                <div class="row">
                                    <p class="subtitle-form">Tipe Pemesanan</p>
                                    <div class="input-field col m4 s6">
                                        <input class="with-gap" name="tipe" type="radio" id="sekalijalan" />
                                        <label for="sekalijalan">Sekali jalan</label>
                                    </div>
                                    <div class="input-field col m4 s6">
                                        <input class="with-gap" name="tipe" type="radio" id="pulangpergi" />
                                        <label for="pulangpergi">Pulang-pergi</label>
                                    </div>
                                </div>

                                <div class="divider"></div>
                                <div class="row">
                                    <p class="subtitle-form">Dari</p>
                                    <div class="input-field s12">
                                        <i class="material-icons prefix">location_on</i>
                                        <input id="lokasidari" type="text" class="validate">
                                        <label for="lokasidari">Lokasi</label>
                                    </div>

                                    <p class="subtitle-form">Waktu</p>
                                    <div class="input-field s12">
                                        <i class="material-icons prefix">today</i>
                                        <input type="datetime" placeholder="Pergi" class="datepicker">
                                    </div>
                                    <div class="input-field s12">
                                        <i class="material-icons prefix">alarm_on</i>
                                        <input type="time" placeholder="Jam pergi">
                                    </div>
                                </div>

                                <div class="divider"></div>
                                <div class="row">
                                    <p class="subtitle-form">Ke</p>
                                    <div class="input-field s12">
                                        <i class="material-icons prefix">location_on</i>
                                        <input id="lokasike" type="text" class="validate">
                                        <label for="lokasike">Lokasi</label>
                                    </div>

                                    <p class="subtitle-form">Waktu</p>
                                    <div class="input-field s12">
                                        <i class="material-icons prefix">today</i>
                                        <input type="datetime" placeholder="Pulang" class="datepicker">
                                    </div>
                                    <div class="input-field s12">
                                        <i class="material-icons prefix">alarm_on</i>
                                        <input type="time" placeholder="Jam pulang">
                                    </div>
                                </div>

                                <div class="divider"></div>
                                <div class="row bus-list">
                                    <div class="row bus-pesanan-header">
                                        <div class="col s6 title">
                                            <p class="subtitle-form">Bus</p>
                                        </div>
                                        <div class="col s6">
                                            <a class="waves-effect waves-light btn blueok tambahbus" id="addbus">Tambah Bus</a>
                                        </div>
                                    </div>

                                    <div class="divider" id="divider1"></div>
                                    <div class="bus-item" id="bus-item1">
                                        <span class="deletebus" onclick="deletebus(1)">+</span>
                                            <div class="input-field s12">
                                                <!-- ketika dipilih keluar modal untuk memilih kategori bus -->
                                                <i class="material-icons prefix">shopping_cart</i>
                                                <input type="hidden" name="tipebus[]" id="tipebus1">
                                                <div class="pilihbus">
                                                    <p id="tipebus1-view">Tekan tombol pilih bus.</p>
                                                    <button data-target="modalbus" class="btn modal-trigger blueok" onclick="buspilihaktif(1)">Pilih Bus</button>
                                                </div>
                                            </div>
                                            <div class="jumlahdanbudget">
                                                <div class="input-field s12">
                                                    <i class="material-icons prefix">shopping_cart</i>
                                                    <input type="number" class="validate" name="jumlahbus[]">
                                                    <label>Jumlah Bus</label>
                                                </div>
                                                <div class="input-field s12">
                                                    <i class="material-icons prefix">work</i>
                                                    <input type="number" class="validate" name="budgetbus[]">
                                                    <label>Budget</label>
                                                </div>
                                            </div>
                                    </div>

                                </div>

                                <div class="divider"></div>

                                <div class="row fasilitas">
                                    <p class="subtitle-form">Fasilitas</p>
                                    <div class="input-field s12">   
                                        <!-- ketika dipilih keluar modal untuk memilih fasilitas yang diinginkan -->
                                        <i class="material-icons prefix">comment</i>
                                        <div class="pilihfasilitas">
                                            <!-- <p>Tekan tombol pilih fasilitas.</p>
                                            <button data-target="modalfasilitas" class="btn modal-trigger blueok">Pilih Fasilitas</button> -->
                                            <p>
                                              <input type="checkbox" class="filled-in" id="ac" name="fasilitas[]" />
                                              <label for="ac">AC</label>
                                            </p>
                                            <p>
                                              <input type="checkbox" class="filled-in" id="stopkontak" name="fasilitas[]"/>
                                              <label for="stopkontak">Stop kontak</label>
                                            </p>
                                            <p>
                                              <input type="checkbox" class="filled-in" id="uangtol" name="fasilitas[]"/>
                                              <label for="uangtol">Uang tol</label>
                                            </p>
                                            <p>
                                              <input type="checkbox" class="filled-in" id="kamarmandi" name="fasilitas[]"/>
                                              <label for="kamarmandi">Kamar mandi</label>
                                            </p>
                                            <p>
                                              <input type="checkbox" class="filled-in" id="tv" name="fasilitas[]"/>
                                              <label for="tv">TV</label>
                                            </p>
                                            <p>
                                              <input type="checkbox" class="filled-in" id="dvd" name="fasilitas[]"/>
                                              <label for="dvd">DVD</label>
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="divider"></div>
                                <div class="row">
                                    <p class="subtitle-form">Kontak</p>
                                    <div class="input-field s12">
                                        <i class="material-icons prefix">stay_current_portrait</i>
                                        <input id="kontak" type="number" class="validate">
                                        <label for="lokasidari">Kontak</label>
                                    </div>
								
                                <div class="row submit-formpesan">
                                    <button class="btn waves-effect waves-light btn-large blueok" type="submit" name="action" href="dashboard">Pesan
                                    </button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


                                                <!-- Modal Pilihan Bus -->
                                                <div id="modalbus" class="modal">
                                                    <div class="modal-content">
                                                        <div class="row">
                                                            <div class="col s12">
                                                                <div class="row modal-action modal-close" id="bus59">
                                                                    <div class="col m3 s6 gambarbus">
                                                                        <img src='<c:url value="/resources/img/bus/59seats.jpg"/>' class="responsive-img">
                                                                    </div>
                                                                    <div class="col m9 s6 namabus">
                                                                        <p>Bus 59 seats</p>
                                                                    </div>
                                                                </div>
                                                                <div class="row modal-action modal-close" id="bus48">
                                                                    <div class="col m3 s6 gambarbus">
                                                                        <img src="img/bus/48seats.jpg" class="responsive-img">
                                                                    </div>
                                                                    <div class="col m9 s6 namabus">
                                                                        <p>Bus 48 seats</p>
                                                                    </div>
                                                                </div>
                                                                <div class="row modal-action modal-close" id="bus35">
                                                                    <div class="col m3 s6 gambarbus">
                                                                        <img src='<c:url value="/resources/img/bus/35seats.jpg"/>' class="responsive-img">
                                                                    </div>
                                                                    <div class="col m9 s6 namabus">
                                                                        <p>Bus 35 seats</p>
                                                                    </div>
                                                                </div>
                                                                <div class="row modal-action modal-close" id="elf18">
                                                                    <div class="col m3 s6 gambarbus">
                                                                        <img src='<c:url value="/resources/img/bus/elf18seats.jpg"/>' class="responsive-img">
                                                                    </div>
                                                                    <div class="col m9 s6  namabus">
                                                                        <p>Mini Elf 18 seats</p>
                                                                    </div>
                                                                </div>
                                                                <div class="row modal-action modal-close" id="bus10">
                                                                    <div class="col m3 s6 gambarbus">
                                                                        <img src='<c:url value="/resources/img/bus/hiace.jpg"/>' class="responsive-img">
                                                                    </div>
                                                                    <div class="col m9 s6 namabus">
                                                                        <p>Bus panjang 10 seats</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
		
		<%@include file="app-footer.jsp" %>
		
    </body>
  </html>