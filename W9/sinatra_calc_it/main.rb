require 'sinatra'
require 'pry'

get '/bmi' do
  # when a post request is made to the path /bmi, run this block
  height = params[:height].to_f
  weight = params[:weight].to_f
  @bmi = weight / height**2
  # render bmi.erb inside /views folder
  erb :bmi
end

get '/hello' do
  name = params[:name]
  @hello = name
  erb :hello
end

get '/trip' do
  price = params[:price].to_f
  distance = params[:distance].to_f
  mpg = params[:mpg].to_f
  speed = params[:speed].to_f
  @trip = (distance/speed)/mpg * price
 
 erb :trip
end

get '/morg' do
  principal = params[:principal].to_f
  interest = params[:interest].to_f
  payments = params[:payments].to_f
  @morg = principal * interest * (1 + interest)**payments
  erb :morg
end

