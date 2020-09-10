
$clear = system("clear")
$prompt = TTY::Prompt.new(help_color: :green)
$pastel = Pastel.new
$user_instance = nil
$line = '__________________________'

def start
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
 welcome
end

def exit
    system("clear")
    puts ''
    main_menu = $prompt.select("Would you like to return to the main menu?", %w(Yes No))
    if main_menu == "Yes"
        system("clear")
        start
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
           |_|| | | ||  | |(/_><|    | || | |(/_
           "
        puts ''
        puts ''
        puts ''
        puts ''
        puts ''
    end
end

def welcome
user_status = $prompt.select("Welcome to The Bridge. We're happy to have you here. Please select New or Existing User:", %w(New Existing))
    if user_status == "New"
        system("clear")
        create_account
    elsif user_status == "Existing"
        system("clear")
        username_login
    end
end

def username_login
    system("clear")
    username = $prompt.ask("Please enter your username, or X to exit")
    $user_instance = User.find_by(username: username)
    if username.upcase == 'X'
        exit
    else
        system("clear")
        puts "Welcome Back, #{$user_instance.username}!"
        password_login
    end
end

def password_login
    password = $prompt.mask("Please enter your password, or X to exit")
    if password.upcase == 'X'
        exit
    else
        puts "Login successful."
        homepage
    end
end

def homepage
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
        #puts desciption of the app and maybe a short bio (or just acknowlegdement about the founders)

    elsif options == "Profile"
        profile_options = $prompt.select("Profile Options:", %w(Details Saved Deactivate Back))
        
        if profile_options == "Details"
            #run profile_info
        elsif profile_options == "Saved"
            saved_options = $prompt.select("Saved Options:", %w(Categories Resources Back))
            if saved_options == "Categories"
                #run saved_psych_categories
            elsif saved_options == "Resources"
                #run saved_resources
            elsif saved_options == "Back"
                homepage
            end
        elsif profile_options == "Back"
            homepage
        else 
            #run deactivate_account
        end

    elsif options == "Categories"
        category_options = $prompt.select("Profile Options:", %w(ViewAll Save Back))
        if category_options == "ViewAll"
            #run view 
        elsif category_options == "Save"
            #run saved_resources
        elsif category_options == "Back"
            homepage
        end

    elsif options == "Resources"
        #run resource options

    else
        exit
    end

end

def create_account
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
    puts "Great, #{$user_instance.username}! Your account was successfully created."
    homepage
end


