class User < ActiveRecord::Base

    has_many :psych_categories
    has_many :resources, through: :psych_categories

    # def test
    #     puts $user_instance
    # end


    def profile_info(username)
        username = User.find_by(username: username)
        puts "Profile Information:"
        puts "Full Name: #{self.full_name}"
        puts "Username: #{self.username}"
        puts "Password: #{self.password}"
        puts "Age: #{self.age}"
        puts "Gender: #{self.gender}"
        puts "Email Address: #{self.email_address}"
        puts "Location: #{self.location}"
    end
  
end

