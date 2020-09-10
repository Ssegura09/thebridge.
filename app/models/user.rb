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
        sleep(2)
        AppCLI.homepage
    end

    def saved_psych_categories(category_to_save)
        category = category_to_save.capitalize
        saved_category = PsychCategory.find_by(name: category)
        self.psych_categories << saved_category
        puts "You have successfully saved the category, #{saved_category.name}."
    end

    def delete_category(category_to_delete)
        category = category_to_delete.capitalize
        deleted_category = PsychCategory.find_by(name: category)
        deleted_category.user_id = nil
        delete_category.save
        puts "You have successfully deleted the category #{deleted_category.name}."
    end


    def update_user_profile
        
    end

end

