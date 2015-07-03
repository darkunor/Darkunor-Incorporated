class User < ActiveRecord::Base
  attr_accessible :current_balance, :name, :savings_balance
end
