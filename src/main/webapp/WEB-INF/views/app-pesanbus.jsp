<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
                            <form:form action="addOrder" method="post" class="formpemesanan">
                            	<form:input type="hidden" value="${userId}" path="userId"/>
                                <div class="row">
                                    <p class="subtitle-form">Tipe Pemesanan</p>
                                    <div class="input-field col m4 s6">
                                        <form:radiobutton class="with-gap" name="tipe" value="0" id="sekalijalan" path="rentType"/>
                                        <form:label for="sekalijalan" path="rentType">Sekali jalan</form:label>
                                    </div>
                                    <div class="input-field col m4 s6">
                                        <form:radiobutton class="with-gap" name="tipe" value="1" id="pulangpergi" path="rentType"/>
                                        <form:label for="pulangpergi" path="rentType">Pulang-pergi</form:label>
                                    </div>
                                </div>

                                <div class="divider"></div>
                                <div class="row">
                                    <p class="subtitle-form">Dari</p>
                                    <div class="input-field s12">
                                        <i class="material-icons prefix">location_on</i>
                                        <form:input id="lokasidari" type="text" class="validate" path="pickAddress"/>
                                        <form:label for="lokasidari" path="pickAddress">Lokasi</form:label>
                                    </div>

                                    <p class="subtitle-form">Waktu</p>
                                    <div class="input-field s12">
                                        <i class="material-icons prefix">today</i>
                                        <form:input type="datetime" placeholder="Pergi" class="datepicker" path="departureDate"/>
                                    </div>
                                    <div class="input-field s12">
                                        <i class="material-icons prefix">alarm_on</i>
                                        <form:input type="time" placeholder="Jam pergi" path="departureTime"/>
                                    </div>
                                </div>

                                <div class="divider"></div>
                                <div class="row">
                                    <p class="subtitle-form">Ke</p>
                                    <div class="input-field s12">
                                        <i class="material-icons prefix">location_on</i>
                                        <form:input id="lokasike" type="text" class="validate" path="destinationAddress"/>
                                        <form:label for="lokasike" path="destinationAddress">Lokasi</form:label>
                                    </div>

                                    <p class="subtitle-form">Waktu</p>
                                    <div class="input-field s12">
                                        <i class="material-icons prefix">today</i>
                                        <form:input type="datetime" placeholder="Pulang" class="datepicker" path="returnDate"/>
                                    </div>
                                    <div class="input-field s12">
                                        <i class="material-icons prefix">alarm_on</i>
                                        <form:input type="time" placeholder="Jam pulang" path="returnTime"/>
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
                                              <form:input type="checkbox" class="filled-in" id="ac" name="fasilitas[]" path="facilities"/>
                                              <form:label for="ac" path="facilities">AC</form:label>
                                            </p>
                                            <p>
                                              <form:input type="checkbox" class="filled-in" id="stopkontak" name="fasilitas[]" path="facilities"/>
                                              <form:label for="stopkontak" path="facilities">Stop kontak</form:label>
                                            </p>
                                            <p>
                                              <form:input type="checkbox" class="filled-in" id="uangtol" name="fasilitas[]" path="facilities"/>
                                              <form:label for="uangtol" path="facilities">Uang tol</form:label>
                                            </p>
                                            <p>
                                              <form:input type="checkbox" class="filled-in" id="kamarmandi" name="fasilitas[]" path="facilities"/>
                                              <form:label for="kamarmandi" path="facilities">Kamar mandi</form:label>
                                            </p>
                                            <p>
                                              <form:input type="checkbox" class="filled-in" id="tv" name="fasilitas[]" path="facilities"/>
                                              <form:label for="tv" path="facilities">TV</form:label>
                                            </p>
                                            <p>
                                              <form:input type="checkbox" class="filled-in" id="dvd" name="fasilitas[]" path="facilities"/>
                                              <form:label for="dvd" path="facilities">DVD</form:label>
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="divider"></div>
                                <div class="row">
                                    <p class="subtitle-form">Kontak</p>
                                    <div class="input-field s12">
                                        <i class="material-icons prefix">stay_current_portrait</i>
                                        <form:input id="kontak" type="number" class="validate" path="contact"/>
                                        <form:label for="lokasidari" path="contact">Kontak</form:label>
                                    </div>
								
                                <div class="row submit-formpesan">
                                    <form:button class="btn waves-effect waves-light btn-large blueok" type="submit" name="action" href="dashboard">Pesan
                                    </form:button>
                                </div>
                            </form:form>
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