class User < ActiveRecord::Base

    has_many :psych_categories
    has_many :resources, through: :psych_categories


    def profile_info(user)
        system("clear")
        puts ''
        puts "Profile Information:"
        puts '___________________________________________'
        puts ''
        puts "Full Name: #{user.full_name}"
        puts "Username: #{user.username}"
        puts "Password: #{user.password}"
        puts "Age: #{user.age}"
        puts "Gender: #{user.gender}"
        puts "Email Address: #{user.email_address}"
        puts "Location: #{user.location}"
        puts '___________________________________________'
        AppCLI.homepage
    end

    def saved_psych_categories(category)
        # binding.pry
        saved_category = PsychCategory.find_by(name: category)
        self.psych_categories << saved_category
    end

end

