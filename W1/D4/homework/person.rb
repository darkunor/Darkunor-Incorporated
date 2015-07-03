class Person

  attr_accessor :name, :age

  def initialize(options={})
    self.name = options[:name]
    self.age = options[:age]
  end

end