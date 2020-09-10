class AppCLI

$clear = system("clear")
$prompt = TTY::Prompt.new(help_color: :green)
$pastel = Pastel.new
$user_instance = nil
$line = '__________________________'

def self.start
    puts ''
    puts ''
    puts $pastel.green('
___       ___     __   __     __   __   ___  
 |  |__| |__     |__) |__) | |  \ / _` |__   
 |  |  | |___    |__) |  \ | |__/ \__> |___ .')
 puts "
               _ | _ _  _ _  _ 
            VV(/_|(_(_)| | |(/_ 
            "
 self.welcome
end

def self.exit
    system("clear")
    puts ''
    main_menu = $prompt.select("Would you like to return to the main menu?", %w(Yes No))
    if main_menu == "Yes"
        system("clear")
        self.start
    else
        system("clear")
        puts ''
        puts ''
        puts "Thank you for taking courageous steps across"
        puts $pastel.green('
        ___       ___     __   __     __   __   ___  
         |  |__| |__     |__) |__) | |  \ / _` |__   
         |  |  | |___    |__) |  \ | |__/ \__> |___ .')
        puts "
               _ _|_.|   _  _  _|_  _|_. _ _  _  
           |_|| | | ||  | |(/_><|    | || | |(/_"
        puts ''
    end
end

def self.welcome
user_status = $prompt.select("Welcome to The Bridge. We're happy to have you here. Please select New or Existing User:", %w(New Existing))
    if user_status == "New"
        self.create_account
    elsif user_status == "Existing"
        self.username_login
    end
end

def self.username_login
    username = $prompt.ask("Please enter your username, or X to exit")
    $user_instance = User.find_by(username: username) #causing error if username doesn't match records
    
    if username.upcase == 'X'
        self.exit
    else
        puts "Welcome Back, #{$user_instance.username}!"
        self.password_login
    end
    
end

def self.password_login
    password = $prompt.mask("Please enter your password, or X to exit")
    if password.upcase == 'X'
        self.exit
    else
        password = $user_instance.password 
        system("clear")
        puts "Login successful."
        self.affirming_message
    end
end

def self.affirming_message
    puts ""
    puts ''
    affirmations = ["You are not alone in this journey.", "Understanding is the bridge between two minds; love is the bridge between two souls.", "Walking the path across The Bridge, one step at a time.", "You're one step closer towards self-empowerment."]
    sleep(2)
    puts affirmations.sample
    sleep(2)
    self.homepage
end

def self.create_account
    result = $prompt.collect do

        full_name = key(:full_name).ask("To create a new account, enter your Full Name, or X to exit")
        if full_name.upcase == 'X'
            exit
        end
        username = key(:username).ask("Enter your Username, or X to exit")
        if username.upcase == 'X'
            exit
        end
        password = key(:password).mask("Enter your Password, or X to exit")
        if password.upcase == 'X'
            exit
        end
        age = key(:age).ask("Enter your Age (In Years), or X to exit")
        if age.upcase == 'X'
            exit
        end
        gender = key(:gender).ask("Enter your Gender (M, F, PNTA [Prefer Not to Answer], or X to exit)")
        if gender.upcase == 'X'
            exit
        end
        email_address = key(:email_address).ask("Enter your Email Address, or X to exit")
        if email_address.upcase == 'X'
            exit
        end
        location = key(:location).ask("Enter your City, State of Residence (e.g. Houston, TX), or X to exit")
        if location.upcase == 'X'
            exit
        end

    end
    $user_instance = User.create(full_name: result[:full_name], username: result[:username], password: result[:password], age: result[:age], gender: result[:gender], email_address: result[:email_address], location: result[:location])
    system("clear")
    puts ''
    puts "Great, #{$user_instance.username}! Your account was successfully created."
    self.affirming_message
end

def self.about_us
    system("clear")
    puts $pastel.green('
___       ___     __   __     __   __   ___  
 |  |__| |__     |__) |__) | |  \ / _` |__   
 |  |  | |___    |__) |  \ | |__/ \__> |___ .')
 puts "
            _ |_  _   _|_      _
           (_||_)(_)|_||   |_|_\
           "
puts ''
puts "We believe that addressing mental health should not be intimidating, but welcoming."
puts ''
puts "This application, created by founders Bree Warren and Stephanie Segura, is meant to act"
puts "as a bridge between uncertainties about one's struggle with mental health, and the"
puts "path towards healing."
puts ''
puts "We connect our Users to various Resources of common psychological disorders, or PsychCategories, and provide them 
in a manner that is accessible and assuring to their efforts of gaining knowledge and treatment."
sleep(7)
self.homepage
end

def self.homepage
    puts ''
    puts ''
    puts $pastel.green('
___       ___     __   __     __   __   ___  
 |  |__| |__     |__) |__) | |  \ / _` |__   
 |  |  | |___    |__) |  \ | |__/ \__> |___ .') 
 puts ('
        _ _  _ . _    _ _  _  _    
       | | |(_||| |  | | |(/_| ||_|
        ')                              
    options = $prompt.select("How may we guide you along The Bridge today, #{$user_instance.username}?", %w(AboutUs Profile Categories Resources Exit))

    if options == "AboutUs"
        self.about_us
    elsif options == "Profile"
        profile_options = $prompt.select("Profile Options:", %w(Details Saved Deactivate Back))
        
        if profile_options == "Details"
            $user_instance.profile_info($user_instance)
        elsif profile_options == "Saved"
            saved_options = $prompt.select("Saved Options:", %w(Categories Resources Back))
            if saved_options == "Categories"
                #
            elsif saved_options == "Resources"
                system("clear")
                puts "Here are your Saved Resources for your selection:"
                Resource.specific_category_resources
            elsif saved_options == "Back"
                self.homepage
            end
        elsif profile_options == "Back"
            self.homepage
        else 
            #run deactivate_account
        end

    elsif options == "Categories"
        category_options = $prompt.select("Category Options:", %w(ViewAll Save Back))
        if category_options == "ViewAll"
            PsychCategory.psych_category_list
        elsif category_options == "Save"
            system("clear")
            puts ''
            puts "Categories:"
            puts '___________________________________________'
            puts ''
            puts PsychCategory.all.collect {|psych_category| psych_category.name}
            puts '___________________________________________'
            puts ''
            cat_to_save = $prompt.ask("Type the name of the Category that you would like to save to your profile.")
            capitalized_cat_to_save = cat_to_save.capitalize
            $user_instance.saved_psych_categories(capitalized_cat_to_save)
        elsif category_options == "Back"
            self.homepage
        end

    elsif options == "Resources"
        resource_options = $prompt.select("Resource Options:", %w(ViewAll Save Back))
        if resource_options = "ViewAll"
            Resource.resource_list
        end
        #run resource options

    else
        exit
    end

end

end