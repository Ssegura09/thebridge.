## CRUD Abilities, aka User Stories
"." Designates class methods | "#" Designates instance methods

### Create
* User is greeted with a welcome message upon opening the application #DONE

        AppCLI.start
        AppCLI.welcome
* User can create an account and provide their information #DONE

        AppCLI.create_account
### Read
* User can view all user profile information #DONE

        User.profile_info
* User can view a randomly-selected affirming message upon successful login #DONE

        AppCLI.affirming_message
* User can view a short paragraph about the creators of "The Bridge." app #DONE

        AppCLI.about_us
* User can view list of all PyschCategories, including an "Unknown/Not Sure" option #DONE

        PsychCategory.psych_category_list
* User can view list of all Resources #DONE

        Resource.resource_list
* User can view (PsychCategory) description #DONE
        
        Resource.psych_category_description

* User can view criteria of PsychCategory (return DSM-V API or DSM-V strings) #DONE

        Resource.psych_category_criteria
* User can view (PsychCategory-related) articles #DONE

        Resource.psych_category_articles
* User can view therapist infomation specific to selected PsychCategory #DONE

        Resource.psych_category_therapists
* User can view (PsychCategory-related) hotline information (from Resources) #DONE

        Resource.psych_category_hotline
* User can view all resources pertaining to a specific PsychCategory #DONE

        Resource.specific_category_resources
#
### Update
* User can update user profile information #TODO

        AppCLI.update_user_profile
* User can view list of saved PsychCategories specific to the User #TODO

        User.saved_psych_categories
#
### Delete:
* User can delete a PsychCategory from selected list specific to User #TODO

        AppCLI.delete_saved_psych_category
* User can deactivate their account #TODO

        AppCLI.deactivate_account
#
### Additional Methods:
* Users with existing account can input their username and password #DONE
        
        AppCLI.username_login
        AppCLI.password_login
* User can exit the program by typing the letter "x" and pressing "enter" #DONE
        
        AppCLI.exit
#

<br>