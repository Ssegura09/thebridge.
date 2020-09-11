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
    # clean up whne time permits
    deleted = category_to_delete.capitalize
    puts ''
    puts ''
    sleep (2)
    puts "You have successfully deleted #{deleted} from your saved Categories."
    end


    # def update_user_profile(response, response2)
    #     binding.pry
    #     puts ''
    #     puts ''
    #     sleep (2)
    #     puts "Your #{response} has successfully been updated to #{response2}."
    # end

end

