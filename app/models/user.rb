class User < ActiveRecord::Base

    has_many :psych_categories
    has_many :resources, through: :psych_categories

    def profile_info
        puts "Profile Information:"
        puts "Full Name: #{self.full_name}"
        puts "Username: #{self.username}"
        puts "Password: #{self.password}"
        puts "Age: "
        $user_instance = user_instance
        User.find_by(username: user_instance.username)
        binding.pry
    end
  
end

