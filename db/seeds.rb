require_relative '../config/environment'

# User.destroy_all
# Resource.destroy_all
# PsychCategory.destroy_all

# Base Variables:
# # User
# steph = User.new(full_name: "Stephanie Segura", ...)
bree = User.create(full_name: "Bree Warren", username: "breewarren", password: "bree", age: 27, gender: "F", email_address: "ambreea.warren@gmail.com", location: "Houston, TX")

# ## PsychCategory
# ptsd = PsychCategory.new()
# domestic_violence = PsychCategory.new()
# suicide = PsychCategory.new()
# depression = PsychCategory.new()
# eating_disorder = PsychCategory.new()
# anxiety = PsychCategory.new()
# ocd = PsychCategory.new()
# bipolar = PsychCategory.new()
# addiction = PsychCategory.new()
# childhood_trauma = PsychCategory.new()
# grief = PsychCategory.new()
# unknown = PsychCategory.new(name: "Unknown/Not Sure")


# ## Resource
# description = Resource.new()
# criteria = Resource.new()
# articles = Resource.new()
# therapists = Resource.new()
# affirming_messages = Resource.new()
# hotline = Resource.new() #https://www.samhsa.gov/find-help/national-helpline

# Association Variables:
# (example) test_kitten = Kitten.create(name: "Mitten", owner_id: antonio.id)

# Additional Variables:



binding.pry
0