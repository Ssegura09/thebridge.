require_relative '../config/environment.rb'

$clear = system("clear")
$prompt = TTY::Prompt.new
$pastel = Pastel.new
$user_instance = nil

$clear

def greeting
user_status = $prompt.select("Welcome to The Bridge. We're happy to have you here. Please select New or Existing User", %w(New Existing))
    if user_status == "New"
        system("clear")
        create_account
    elsif user_status == "Existing"
        system("clear")
        login
    end
end

def login
    username = $prompt.ask("Please enter your username, or 0 to exit")
    $user_instance.username = User.find_by(username: username)
    password = $prompt.mask("Welcome Back, #{username}! Enter your password, or 0 to exit")
end

def create_account
    result = $prompt.collect do
        full_name = key(:full_name).ask("Full Name? or 0 to exit")
        username = key(:username).ask("Username? or 0 to exit")
        password = key(:password).mask("Password? or 0 to exit")
        age = key(:age).ask("Age (In Years) or 0 to exit")
        gender = key(:gender).ask("Gender? (M, F, PNTA [Prefer Not to Answer], or 0 to exit)")
        email_address = key(:email_address).ask("Email Address? or 0 to exit")
        location = key(:location).ask("City, State of Residence? (e.g. Houston, TX) or 0 to exit")
    end
    # @new_user = User.new(name: result[:full_name], username: reuslt[:username], etc)
    # #User.new(result)
    #make result either array (use index notation) or keep as hash (use bracket notation)
end

def exit
    $clear = system("clear")
    puts $pastel.magenta( '
   ___       ___     __   __     __   __   ___  
    |  |__| |__     |__) |__) | |  \ / _` |__   
    |  |  | |___    |__) |  \ | |__/ \__> |___ .
    
    ')
    new_or_existing
end

