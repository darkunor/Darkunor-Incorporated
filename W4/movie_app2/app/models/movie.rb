class Movie < ActiveRecord::Base
  attr_accessible :actors, :genre_id, :name, :placedwatched, :review

belongs_to :genre
end
