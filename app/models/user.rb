class User < ActiveRecord::Base

    has_many :psych_categories
    has_many :resources, through: :psych_categories
  
end

