var calculateBmi = function(height, weight) {
  return height / (weight * weight)
};

$(document).ready(function() {
  // add an event listener on the submit button to ..
  $("input[type='submit']").on('click', function(event) {
    event.preventDefault();
    // grab the user input value for height
    var $height = $("input[name='height']").val();
    var height = parseInt($height);

    // grab the user input value for weight
    var $weight = $("input[name='weight']").val();
    var weight = parseInt($weight);

    // calculate the BMI
    var bmi = calculateBmi(height, weight);

    // display the BMI on the page
    $("p.bmi").text(bmi);
  });
});
