require "pry-byebug"

require_relative "classbroker"
require_relative "Client"
require_relative "Portfolio"
require_relative "Stock"
require_relative "Methods"


broker = Broker.new("Oakes Lyman & Co Ltd", "London")

broker.clients[akunor] = Client.new(name: "Akunor", sex: "m", address: "Hampstead", occupation: "millionaire", status: "s", children: 0,)

broker.portfolios[ ]










response = menu
while response != 0

case response 
when 1
puts shelter.display_clients
when 2
puts shelter.display_portfolios
when 4
puts new_person = create_client(shelter) 
when 5
  puts adopt_animal(shelter)

else
      puts "invalid option"

  end

  puts "press enter to continue"
  gets

binding pry