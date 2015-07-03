mortgage

def mortgage_calc
  print "principal: "
  p = gets.to_f
  print "yearly interest rate: "
  i = gets.to_f
  i /= 100
  i /= 12 
  print "number of payments: "
  n = gets.to_i
  x = (1+i)**n
  puts "Your monthly mortgage payment is $#{p*i*x/(x-1)}"
  gets
end