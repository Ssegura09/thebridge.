class Resource < ActiveRecord::Base

    has_many :psych_categories
    has_many :users, through: :psych_categories
  
end