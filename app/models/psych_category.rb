class PsychCategory < ActiveRecord::Base

    belongs_to :users
    belongs_to :resources

    def self.psych_category_list
        self.all
    end
  

end