class Broker

attr_accessor : name, :address, clients

def inititalize(name, address)
self.name = name
self.address = address
self.clients = {}
end

def register (client_name, portfolio_name, stock_name)

client_name = client_name.downcase.to_sym
portfolio_key = portfolio_name.downcase.to_sym
stock_key = stock_name.downcase.to_sym

client = client[client_name]
#To be continued



end