# the bridge.
### Technical Description: 
A Command Line Interface App with CRUD functioning, incorporating:
* Object Relational Mapping (with ActiveRecord)
* SQL Databases (using sqlite3)
* Object Orientation Models (via Ruby)
* Remotely-Sourced Data Retrival (with API)
* User-Friendly Navigation (with TTY prompts)

<br />

### App Description:
(How we would describe it if it were on the App Store)
* Point I
* Point II
* Point III
#
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

        AppCLI#start
        AppCLI#welcome
* User can create an account and provide their information

        AppCLI#create_account
### Read
* User can view all user profile information

        User#profile_info
* User can view a randomly-selected affirming message upon successful login

        AppCLI.affirming_message
* User can view list of all PyschCategories, including an "Unknown/Not Sure" option

        PsychCategory.psych_category_list
* User can view list of all Resources

        Resource.resource_list
* User can view (PsychCategory) description
        
        Resource#psych_category_description

* User can view criteria of PsychCategory (return DSM-V API or DSM-V strings)

        Resource#psych_category_criteria
* User can view (PsychCategory-related) articles

        Resource#psych_category_articles
* User can view therapist infomation specific to selected PsychCategory

        Resource#psych_category_therapists
* User can view (PsychCategory-related) hotline information (from Resources)

        Resource#psych_category_hotline
#
### Update
* User can access saved Resources bookmarked/specific to the User

        User#saved_resources
* User can update user profile information

        AppCLI#update_user_profile
* User can view list of saved PsychCategories specific to the User

        User#saved_psych_categories
#
### Delete:
* User can delete a saved Resource specific to User

        AppCLI#delete_saved_resource
* User can delete a PsychCategory from selected list specific to User

        AppCLI#delete_saved_psych_category
* User can deactivate their account

        AppCLI#deactivate_account
#
#

<br>

# Related Information

### Video Demo:
 [Video Demo Link](https://video.com/blahblahblah)

### Things Learned:
* Thing I

* Thing II

* Thing III

### Difficulties:
* Difficulty I
  * Implementation of Difficulty

* Difficulty II
  * Implementation of Difficulty

### Changes/Modifications/Additions:
* Change/Modification/Addition

### Highlights
* Highlight

#

## Thank you! <br> Bree Warren and Stephanie Segura

#
<br />
<br />
<br />
<br />

# Project Tasks Schedule 
(Tentative)

* Tuesday - clean up methods with TTY Prompt [(see article here)](https://medium.com/@cristina_9416/), look into API for DSM-V
* Wednesday - Finish methods, homepage?, text art [(see here)](http://patorjk.com/software/taag/#p=display&f=Three%20Point&t=ELEVATEmy-first-ruby-cli-app-8804058df294) stick letters)
* Thursday - Finish everything
* Friday - Project walkthrough, final tests and record presentatoin



# ** STRETCH GOAL **
- Create a function where the user can save Resources they can reference back to (I believe this is #saved_resource?)

- For Users who select "Unkown/Not Sure" as PsychCategory, provide a questionnare to guide them towards a category that is most fitting