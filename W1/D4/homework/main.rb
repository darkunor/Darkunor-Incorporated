require "pry-byebug"

require_relative "building"
require_relative "flat"
require_relative "person"

b  = Building.new floors: 4, affluency: :high, postcode: "W1N 4HR"

b.flats << Flat.new(beds:2, baths: 1, furnished: false, number: 1, capacity: 3, price: 2400)

b.flats << Flat.new(beds:1, baths: 1, furnished: true, number: 2, capacity: 2, price: 1800)


f = b.flats.detect {|flat| flat.number == 2}

f.tenants << Person.new(name: "Jon Oldman", age: 30)




binding.pry


