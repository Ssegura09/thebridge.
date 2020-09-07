class Actor < ActiveRecord::Base

    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{first_name} #{last_name}"
    end

    def list_roles
        roles = self.characters
        roles.map {|character| "#{character.name} - #{character.show.name}"}
    end
  
end