class Flat
  attr_accessor :number, :bedrooms, :furnished, :price, :tenants, :status

  def initialize(number, bedrooms, furnished, price)
    self.number = number
    self.bedrooms = bedrooms
    self.furnished = furnished
    self.price = price
    self.tenants = []
  end

  def is_occupied?
    self.tenants.any?
  end

  def let_to(person)
    if self.tenants.length < self.bedrooms
      self.tenants << person
    else
      "No bedrooms available."
    end
  end

  def evict(person)
  end

  def has_availability?
  end
end
