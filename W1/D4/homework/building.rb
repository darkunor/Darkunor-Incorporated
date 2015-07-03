class Building

  attr_accessor :flats, :floors, :postcode, :affluency

  def initialize(options={})
    self.floors    = options[:floors] || 1
    self.postcode  = options[:postcode]
    self.affluency = options[:affluency]
    self.flats     = {}
  end

  def rental_income
    occupied_flats = flats.select{ |flat| flat.is_occupied? }
    occupied_flats.reduce(0) do |income, flat|
      income + flat.price
    end
  end

end