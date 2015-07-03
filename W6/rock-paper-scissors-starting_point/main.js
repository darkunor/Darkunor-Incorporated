//set a variable which contains the 3 options rock, paper or scissors
//ask player to choose which item they would like to select
//create a random generator
//have to set 2 variables one for the random variable and the second one for the users option. 
//set case statments/rules
  // - Rock beats scissors 
  // - Paper beats rock
  // - Scissors beats paper. 

  // (user) rock (computer) scissors  - rock 1 point
  // (user) rock (computer) paper - computer 1 point
  // (user)

  function getComputerChoice() {
    var choices = ['rock', 'paper', 'scissors'];
    var choice = Math.floor(Math.random() * 3)
    return choices[choice];
  }
  $('.choice').on('click', function() {
    var humanChoice = $(this).attr('id');
    var computerChoice = getComputerChoice();

    var humanWins = (
      (humanChoice === 'rock' && computerChoice === 'scissors') ||
      (humanChoice === 'paper' && computerChoice === 'rock') ||
      (humanChoice === 'scissors' && computerChoice === 'paper')
    )

    if (humanChoice === computerChoice) {
      $('#status').html("<p>It's a draw. You both picked " + humanChoice + ".</p>");
    }
    else if (humanWins) {
      var currentScore = parseInt($('#humanScore').text());
      currentScore += 1;
      $('#humanScore').text(currentScore)
      $('#status').html("<p>You picked " + humanChoice + ". The computer picked " + computerChoice + "</p>");

    } else {
      var currentScore = parseInt($('#computerScore').text());
      currentScore += 1;
      $('#computerScore').text(currentScore)
      $('#status').html("<p>You picked " + humanChoice + ". The computer picked " + computerChoice + "</p>");
    }
  })
  // var userChoice = prompt("Do you choose rock, paper or scissors?")

  // var computerChoice = Math.random();
  // console.log(computerChoice);

  // if (computerChoice <= 0.33) 
  // {
  // console.log ("rock");
  // } 
  // else if (computerChoice <= 0.67) 
  // {
  // console.log ("paper");
  // } 
  // else {
  // console.log ("scissors");
  // }

  // var compare = function (choice1, choice2) {
  //     if (choice1 === choice2) {
  //         return "The result is a tie!";
  //     }
  // };

  // var choice1 = "scissors";
  // var choice2 = "scissors";

  // compare(choice1, choice2);