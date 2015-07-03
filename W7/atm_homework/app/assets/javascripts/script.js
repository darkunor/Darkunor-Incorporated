$(document).ready(function() {

  var currentAccountBalance = parseInt($('div.current span.balance').text());
  var savingsAccountBalance = parseInt($('div.savings span.balance').text());


  //deposit money

  var depositInCurrentAccount = function(amount){
    var amount = parseInt(amount);
    if (!isNaN(amount) && amount> 0){
      currentAccountBalance = currentAccountBalance + amount;
   }
  };

  var depositInSavingsAccount = function(amount){
    var amount = parseInt(amount);
    if (!isNaN(amount) && amount> 0){
      savingsAccountBalance = savingsAccountBalance + amount;
   }
  };

  var withdrawFromCurrentAccount = function(amount){
   var amount = parseInt(amount);
    if (!isNaN(amount) && amount > 0) {

      if (amount <= currentAccountBalance) {
        console.log('enough money on current account');
        currentAccountBalance = currentAccountBalance - amount;

      } else if (amount <= (currentAccountBalance + savingsAccountBalance)) {

        console.log('overdraft protection activated!');

        //calculate the amounts that need to be written from the the two accounts
        var amountToTakeFromSavingsAccount = amount - currentAccountBalance;
        console.log('amountToTakeFromSavingsAccount', amountToTakeFromSavingsAccount);

        var amountToTakeFromCurrentAccount = amount - amountToTakeFromSavingsAccount;
        console.log(amountToTakeFromCurrentAccount);
       
       // withdraw amounts
        withdrawFromCurrentAccount(amountToTakeFromCurrentAccount);
        withdrawFromSavingsAccount(amountToTakeFromSavingsAccount);
      
       //update savings balance
       $('div.savings span.balance').text(savingsAccountBalance);

      } else {

        alert('No Money in your accounts!');

      }
    }
  };

  var withdrawFromSavingsAccount = function(amount){
   var amount = parseInt(amount);
    if (!isNaN(amount) && amount> 0){
      if (amount <= savingsAccountBalance) {
        savingsAccountBalance = savingsAccountBalance - amount;
      } else {
        alert('Aint no money in your savings!');
      }
    }
  };

 $('div.current button.deposit').on('click', function(){
  var $amount = $('input.current').val();
  depositInCurrentAccount($amount);
  $('div.current span.balance').text(currentAccountBalance);
  $('input.current').val("");
 });
  
 $('div.current button.withdraw').on('click', function(){
  var $amount = $('input.current').val();
  withdrawFromCurrentAccount($amount);
  $('div.current span.balance').text(currentAccountBalance);
  $('input.current').val("");
 });

 $('div.savings button.deposit').on('click', function(){
  var $amount = $('input.savings').val();
  depositInSavingsAccount($amount);
  $('div.savings span.balance').text(savingsAccountBalance);
  $('input.savings').val("");
 });

 $('div.savings button.withdraw').on('click', function(){
  var $amount = $('input.savings').val();
  withdrawFromSavingsAccount($amount);
  $('div.savings span.balance').text(savingsAccountBalance);
  $('input.savings').val("");
 });




});






//withdraw money