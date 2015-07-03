//Make an app that updates automatically!


$(document).ready(function() {
  $('form').on('submit', function(ev) {
    ev.preventDefault();
    var symbol = $('#symbol_input').val();
    

    $.ajax({
      url: '/' + symbol,
      success: function(data) {
        console.log(data)
      }
    });
  });
});