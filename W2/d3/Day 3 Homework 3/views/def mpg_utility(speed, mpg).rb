def mpg_utility(speed, mpg)
  if speed > 60
    mpg - ((speed - 60) * 2)
  else
    mpg
  end
end