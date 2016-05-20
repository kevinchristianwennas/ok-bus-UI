// setting sidebar
$('.button-collapse').sideNav({
      menuWidth: 250, // Default is 240
      edge: 'right', // Choose the horizontal origin
      closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
    }
  );

$('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });

// add button
$("#addbus").click(function() {
  
});

// full screen
 window.addEventListener("load", function() { window. scrollTo(0, 0); });

// modal fasilitas dan tipe bus
$(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();
});


// *******************************************************
//
//  Keperluan tombol tambah bus di halaman pemesanan bus
//
// *******************************************************

var pilihbus = 1;
var jumlahbus = 2;

function buspilihaktif(number){
  pilihbus = number;
}

// Ubah tipe bus di tampilan di input hidden tipebus
$( "#bus59" ).click(function() {
  $("#tipebus"+pilihbus+"-view").text("Bus 59 seats");
  $("#tipebus"+pilihbus).val("1");
});

$( "#bus48" ).click(function() {
  $("#tipebus"+pilihbus+"-view").text("Bus 48 seats");
  $("#tipebus"+pilihbus).val("2");
});

$( "#bus35" ).click(function() {
  $("#tipebus"+pilihbus+"-view").text("Bus 35 seats");
  $("#tipebus"+pilihbus).val("3");
});

$( "#elf18" ).click(function() {
  $("#tipebus"+pilihbus+"-view").text("Bus Elf 18 seats");
  $("#tipebus"+pilihbus).val("4");
});

$( "#bus10" ).click(function() {
  $("#tipebus"+pilihbus+"-view").text("Bus 10 seats");
  $("#tipebus"+pilihbus).val("5");
});

// tombol tambah bus
/*$( "#addbus" ).click(function() {
  jumlahbus = jumlahbus+1;
  $(".bus-list").append('<div class="pilihbus"><p id="tipebus' + jumlahbus + '-view">Tekan tombol pilih bus.</p><button data-target="modalbus" class="btn modal-trigger blueok" >Pilih Bus</button></div>');
});*/

$( "#addbus" ).click(function() {
  jumlahbus = jumlahbus+1;
  
  var element = $('.bus-list');
  var arr = [];

  arr.push('<div class="divider" id="divider'+jumlahbus+'"></div>');
  arr.push('<div class="bus-item" id="bus-item'+jumlahbus+'">');
  arr.push('<span class="deletebus" onclick="deletebus('+jumlahbus+')">+</span>');
  arr.push('<div class="input-field s12">');
  arr.push('<i class="material-icons prefix">shopping_cart</i>');
  arr.push('<input type="hidden" name="tipebus[]" id="tipebus'+jumlahbus+'">');
  arr.push('<div class="pilihbus">');
  arr.push('<p id="tipebus'+jumlahbus+'-view">Tekan tombol pilih bus.</p>');
  arr.push('<button data-target="modalbus" class="btn modal-trigger blueok" onclick="buspilihaktif('+jumlahbus+')">Pilih Bus</button>');
  arr.push('</div>');
  arr.push('</div>');
  arr.push('<div class="jumlahdanbudget">');
  arr.push('<div class="input-field s12">');
  arr.push('<i class="material-icons prefix">shopping_cart</i>');
  arr.push('<input type="number" class="validate" name="jumlahbus[]">');
  arr.push('<label>Jumlah Bus</label>');
  arr.push('</div>');
  arr.push('<div class="input-field s12">');
  arr.push('<i class="material-icons prefix">work</i>');
  arr.push('<input type="number" class="validate" name="budgetbus[]">');
  arr.push('<label>Budget</label>');
  arr.push('</div>');
  arr.push('</div>');
  arr.push('</div>');

  element.append(arr.join(''));

});




function deletebus(number){
  document.getElementById('bus-item'+number).remove();
  document.getElementById('divider'+number).remove();
}