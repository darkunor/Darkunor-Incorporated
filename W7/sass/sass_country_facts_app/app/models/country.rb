class Country < ActiveRecord::Base
  attr_accessible :flag, :map, :name, :population, :summary, :video, :continent_id

  belongs_to :continent
end
