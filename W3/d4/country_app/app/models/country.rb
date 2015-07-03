class Country < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :currency, :language, :name, :population, :image
=======
  attr_accessible :currency, :language, :name, :population, :image, :continent_id

belongs_to :continent

>>>>>>> b8e428f8059ccb5792d7f21390b8721512f63771
end
