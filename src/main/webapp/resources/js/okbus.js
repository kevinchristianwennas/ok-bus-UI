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
      