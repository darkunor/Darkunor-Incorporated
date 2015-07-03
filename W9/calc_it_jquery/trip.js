var calculateTripTime = function(price, distance, mpg, speed){
return distance/speed
};

function mpg_utility(speed, mpg){
  if (speed > 60) {
    return mpg - ((speed - 60) * 2)
  } else {
    return mpg
  }
}

function trip_calc(event){
  event.preventDefault();

  var $speed = $("input[name='speed']").val();
  var speed = parseInt($speed);

  var $distance = $("input[name='distance']").val();
  var distance = parseInt($distance);

  var $price = $("input[name='price']").val();
  var price = parseInt($price);

  var $mpg = $("input[name='mpg']").val();
  var mpg = parseInt($mpg);

  mpg = mpg_utility(speed, mpg);

  var time = distance/speed;

  var cost = (distance/mpg) * price;

  $("p.trip").text("It will take you " + time + " hours at a cost of " + cost);
}


$(document).ready(function() {

  $("input[type='submit']").on('click', trip_calc);
});