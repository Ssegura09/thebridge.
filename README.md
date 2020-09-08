# project name.
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
### Users Table Properties
* Full Name
* Username (Email Address)
* Password
* Age
* Gender
* Email Address
* Location

### PsychCategory Table Properties
* Name
* User ID (Foreign Key)
* Resource ID (Foreign Key)

### Resource Table Properties
* Type

### Therapist Table Properties (?)
* Name
* Gender
* Ethnicity
* Ratings
* Years Experience
* Location
* Email Address
* Specialty, aka PsychCategory (Foreign Key?)
#
#
## CRUD Abilities, aka User Stories
"." Designates class methods | "#" Designates instance methods

## Create:
### User
* User can create an account and provide my information

        .create_user
### PsychCategory
* User can blah blah blah

        .blah
### Resource
* User can blah blah blah

        .blah
#
## Read:
### User
* User can blah

        .blah
### PsychCategory
* User can blah blah blah

        .blah
### Resource
* User can blah blah blah

        .blah
#
## Update:
### User
* User can blah

        .blah
### PsychCategory
* User can blah blah blah

        .blah
### Resource
* User can blah blah blah

        .blah
#
## Delete:
### User
* User can blah

        .blah
### PsychCategory
* User can blah blah blah

        .blah
### Resource
* User can blah blah blah

        .blah
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
* Monday - clean up brainstorming file & set up environment
* Tuesday - user activities/methods, create migrations/tables, incorporate associations in the classes, look into API for DSM-V; TTY Prompt [(see article here)](https://medium.com/@cristina_9416/)
* Wednesday - Finish methods, homepage?, text art [(see here)](http://patorjk.com/software/taag/#p=display&f=Three%20Point&t=ELEVATEmy-first-ruby-cli-app-8804058df294) (ex: three point or straight or stick letters)
* Thursday - Finish everything
* Friday - Project walkthrough, final tests and record presentatoin

# Brainstorming
##
App Names:
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

PsychCategory Name Examples:
- PTSD
- Domestic Violence
- Suicide
- Depression
- Eating Disorder
- Anxiety
- etc.
- Unknown/Not Sure

Resource Type Examples:
- Specialty description
- Criteria (DSM-V) - Use API? (see below)
- Articles
- Therapist
- Quotes/Inspirational/Therapeutic Messages/Comfort/Affirmations
- Hotlines
- Support groups 

