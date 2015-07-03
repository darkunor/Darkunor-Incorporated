class Continent < ActiveRecord::Base
  attr_accessible :hemisphere, :name

  has_many :countries, dependent: :destroy
  
end
