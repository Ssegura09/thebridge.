
# User Stories:
As a user, I want to be able to create an account and provide my information (.create_user) 
As a user, I want to be able to enter my name to retrieve my records
As a user, I want to enter a location and be given a random nearby restaurant suggestion
As a user, I should be able to reject a suggestion and not see that restaurant suggestion again
As a user, I want to be able to save to and retrieve a list of favorite restaurant suggestions

# Specialty
Specialty.all

# Resource

Requirements:
- Create: new user
- Read: returning, displaying all Users
- Update: edit & process update info about user
- Delete: delete user

# App Name
- Taboo
- InnerZen
- Balance
- Conversation
- Safe space
- Validate
- Guidance
- Awareness seeking
- Help!
- Persist
- Mindset
- Mindshift
- Lifeshift

# Domain Model
User <-> Speciality <-> Resource

# Relationships/Associations

User
A User has many PsychCategories
A User has many Resources through PsychCategory

PsychCategory
A PsychCategory belongs to a User
A PsychCategory belongs to a Resource

Resource
A Resource has many PsychCategories
A Resource has many Users through PsychCategory


# User Class
Attributes - :name, :age, :gender, :email, :location, :password?

# PsychCategory Class - Join Class
Attributes - :name(of category), :user, :resource
* Contains foreign keys

PsychCategory Name Examples:
PTSD
Domestic Violence
Suicide
Depression
Eating Disorder
Anxiety
etc.
(user will have option to include unknown or not sure for psych_categories)

# Resource Class
Attributes - :type

Resource Type Examples:
- Specialty description
- Criteria (DSM-V) - Use API? (see below)
- Articles
- Therapist: (possibly a table)
    - gender
    - name
    - speciality
    - ratings
    - years experience
    - office phone number
- Quotes/Inspirational/Therapeutic Messages/Comfort/Affirmations
- Hotlines
- Support groups 


API - Accessing data from another server
- application programming interface


To Do:
- finish user stories/methods for each Class, overall plan/strategy (should therapist be its own class?)
- create cli interaction tasks
- see active record assoctions > active record project (for environment setup)
- see getting data from remote sources for API code-along
- create schedule for mon-friday
    monday - finish planning & environment/files
    tuesady - migrations/tables, classes with associations, start methods
    wednesday - finish methods, api?, start cli
    thursday - finish everything
    friday - talk through transcript, test and records