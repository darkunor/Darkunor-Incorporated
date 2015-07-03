class Portfolio

attr_accessor :stock_name, :value, :date

def initialize(options= {})
self.stock_name = {}
self.value = {}
self.date = options[:date]
end

def pretty_string
    "The value of #{stock_name} as on the #{date} is #{value}"    
  end