require 'pry-byebug'
require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'bmi'
require 'trip calculator'
require 'mortgage'


get '/bmi' do
  @result = params[:x].to_f * params[:y].to_f  
erb :bmi

 @first = params[:first].to_f
@second = params[:second].to_f
@operator =params[:operator]

@result = case @operator
when '/'
  @first / @second
when nil
nil
else
  "nil"
 end

erb:calc


get '/bmi'do
 

    end
    puts @result
    erb :bmi
  end
