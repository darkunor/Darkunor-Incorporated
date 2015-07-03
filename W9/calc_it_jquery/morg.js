function morg_calc(event){
  event.preventDefault();

  var $principal = $("input[name='principal']").val();
  var principal = parseInt($principal);

  var $roi = $("input[name='roi']").val();
  var roi = parseInt($roi);

  var $nop = $("input[name='nop']").val();
  var nop = parseInt($nop);

  var x = (1+roi)*(nop*nop)

  var cost = principal*roi*x/(x-1)

  $("p.morg").text("Your monthly mortgage payment is $" + cost);
}

$(document).ready(function() {

  $("input[type='submit']").on('click', morg_calc);
});