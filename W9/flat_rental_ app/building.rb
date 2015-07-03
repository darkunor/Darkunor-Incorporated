class Building
  attr_accessor :flats, :floors, :postcode

  def initialize(floors, postcode)
    self.flats = []
    self.floors = floors
    self.postcode = postcode
  end

  def list_all_tenants
    tenant_names = []
    self.flats.each do |flat|
      flat.tenants.each do |tenant|
        tenant_names << tenant.name
      end
    end
    tenant_names
  end

  def total_rental_income
    self.flats.each do |flat|
      price = flat.price
      number_of_tenants = flat.tenants.length
      income = income + (price * number_of_tenants)
    end
 
  end

end
