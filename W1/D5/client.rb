class Client

attr_accessor :name, :age, :sex, :address, :occupation, :status, :children, :portfolio

def initialize(options={})
self.name = options[:name]
self.age = options[:age]
self.sex = options [:sex]
self.address = options[:address]
self.occupation = options[:occupation]
self.status = options[:status]
self.children = options[:children]
self.portfolio = {}
end

def pretty_string
    self.inspect
  end
end
