class Flat

  attr_accessor :number, :beds, :baths, :furnished, :capacity, :price, :tenants

  def initialize(options={})
  self.number = options[:number]
  self.beds = options[:beds]
  self.baths = options[:baths]
  self.furnished = options[:furnished]
  self.capacity = options[:capacity]
  self.price = options[:price]
  self.tenants = []
  
end

def is_occupied?
  self.tenants.any?
end





end