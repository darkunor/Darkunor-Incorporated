class Continent < ActiveRecord::Base
  attr_accessible :name

has_many :countries

end
