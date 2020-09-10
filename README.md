# the bridge.
### Technical Description: 
A Command Line Interface App with CRUD functioning, incorporating:
* Object Relational Mapping (with ActiveRecord)
* SQL Databases (using sqlite3)
* Object Orientation Models (via Ruby)
* User-Friendly Navigation (with TTY prompts)

<br />

### App Description:
The application is a mental health and wellness- centered application which acts as a bridge between its Users and various Resources of common psychological disorders, or PsychCategories,  by providing them in a manner that is accessible and assuring to their uncertainty of where to begin the path of knowlege and, ultimately, treatment. See 'AboutUs' in the app for more information.
#
        Instructions: Run "ruby app/run.rb" in the terminal to begin the application
#
## Models & Relationships

### User | PsychCategory (Join Model) | Resource
<br />

### User <br />
* A User has many PsychCategories <br />
* A User has many Resources, through PsychCategory <br />

### PsychCategory <br />
* A PsychCategory belongs to a User <br />
* A PsychCategory belongs to a Resource <br />

### Resource <br />
* A Resource has many PsychCategories <br />
* A Resource has many Users, through PsychCategory <br />
#
#
## SQL Database Table Properties
### User Table Properties
* Full Name
* Username (Email Address)
* Password
* Age
* Gender (M or F)
* Location

### PsychCategory Table Properties
* Name
* User ID (Foreign Key)
* Resource ID (Foreign Key)

### Resource Table Properties
* Type
* Details

### Saved Resources Table Properties
* Name
* Resource_ID (Foreign Key)

<br />

#
#
## CRUD Abilities, aka User Stories
"." Designates class methods | "#" Designates instance methods

### Create
* User is greeted with a welcome message upon opening the application 

        AppCLI.start
        AppCLI.welcome
* User can create an account and provide their information 

        AppCLI.create_account
### Read
* User can view all user profile information 

        User.profile_info
* User can view a randomly-selected affirming message upon successful login 

        AppCLI.affirming_message
* User can view a short paragraph about the creators of "The Bridge." app 

        AppCLI.about_us
* User can view list of all PyschCategories, including an "Unknown/Not Sure" option 

        PsychCategory.psych_category_list
* User can view list of all Resources 

        Resource.resource_list
* User can view (PsychCategory) description 
        
        Resource.psych_category_description

* User can view criteria of PsychCategory (return DSM-V API or DSM-V strings) 

        Resource.psych_category_criteria
* User can view (PsychCategory-related) articles 

        Resource.psych_category_articles
* User can view therapist infomation specific to selected PsychCategory 

        Resource.psych_category_therapists
* User can view (PsychCategory-related) hotline information (from Resources) 

        Resource.psych_category_hotline
* User can view all resources pertaining to a specific PsychCategory 

        Resource.specific_category_resources
#
### Update
* User can update user profile information

        AppCLI#update_user_profile
* User can view list of saved PsychCategories specific to the User

        User#saved_psych_categories
#
### Delete:
* User can delete a PsychCategory from selected list specific to User

        AppCLI#delete_category
#
### Additional Methods:
* Users with existing account can input their username and password 
        
        AppCLI.username_login
        AppCLI.password_login
* User can exit the program by typing the letter "x" and pressing "enter" 
        AppCLI.exit
#

<br>

# Related Information

### Video Demo:
 [Video Demo Link](https://video.com/blahblahblah)

### Things Learned:
* Using a global variable to incorporate throughout a particalular scope and associate User's input to then be used to interact with the Database

* Applying the many features of TTY Prompts to the interface of a Command Line 

* Thing III

### Difficulties:
* Difficulty I
  * Implementation of Difficulty

* Difficulty II
  * Implementation of Difficulty

### Changes/Modifications/Additions:
* Incorporating Remotely-Sourced Data Retrival (with API) to retrieve PsychCategory material from the DSM-5

* Including a questionnare/guide for Users that select  "Unkown/Not Sure" as PsychCategory

* Implementing Username/Password Validation upon User login

* Continuing formatting to enhance User-friendliness of navigation within the app

### Highlights
* Highlight

#

## Thank you! <br> Bree Warren and Stephanie Segura