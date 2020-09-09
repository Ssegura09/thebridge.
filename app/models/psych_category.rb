class PsychCategory < ActiveRecord::Base

    belongs_to :users
    belongs_to :resources

end