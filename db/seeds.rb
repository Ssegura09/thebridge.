require_relative '../config/environment'

User.destroy_all
Resource.destroy_all
PsychCategory.destroy_all


# Base Variables:
## User
steph = User.create(full_name: "Stephanie Segura", username: "stephaniesegura", password: "stephanie", age: 27, gender: "F", email_address: "stepsegura@gmail.com", location: "Houston, TX")
bree = User.create(full_name: "Bree Warren", username: "breewarren", password: "bree", age: 27, gender: "F", email_address: "ambreea.warren@gmail.com", location: "Houston, TX")
bree1 = User.create(full_name: "Bree Warren1", username: "breewarren1", password: "bree", age: 27, gender: "F", email_address: "ambreea.warren@gmail.com", location: "Houston, TX")

## Resource
ptsd_art = Resource.create(resource_type: "Ways to Cope with PTSD", details: "https://www.verywellmind.com/ways-of-coping-with-anxiety-2797619")
suicide_art = Resource.create(resource_type: "Self-harm Coping Tips", details: "https://www.themix.org.uk/mental-health/self-harm/self-harm-coping-tips-and-distractions-5696.html")
depression_art = Resource.create(resource_type: "What is Depression?", details: "https://www.psychiatry.org/patients-families/depression/what-is-depression")
anxiety_art = Resource.create(resource_type: "15 Best Guided Meditation for Anxiety on Youtube", details: "https://theanxietymeditation.com/best-guided-meditation-for-anxiety/")
addict_art = Resource.create(resource_type: "Resources for Addiction", details: "https://www.drugabuse.gov/publications/principles-drug-addiction-treatment-research-based-guide-third-edition/resources")
eating_art = Resource.create(resource_type: "Eating Disorder Doctors and Clinicians", details: "https://www.eatingrecoverycenter.com/treatment-e1va/about-us?st-t=ppc_houston&vt-n=g&vt-k=%2Beating%20%2Bdisorder%20doctors&urlparam=13houston&gclid=Cj0KCQjw-uH6BRDQARIsAI3I-UcOHwTC0qFs22jm-tfEJ6zqzsPOKNBmPnbGOKVSiTSuwTToP-hfEkEaAhUtEALw_wcB")
ocd_art = Resource.create(resource_type: "OCD: What to know", details: "https://www.nami.org/About-Mental-Illness/Mental-Health-Conditions/Obsessive-compulsive-Disorder")
bipolar_art = Resource.create(resource_type: "Am I Bipolar? 8 Signs of Being Bipolar", details: "https://www.betterhelp.com/advice/bipolar/am-i-bipolar-8-signs-of-being-bipolar/?utm_source=AdWords&utm_medium=Search_PPC_c&utm_term=_b&utm_content=88831678748&network=g&placement=&target=&matchtype=b&utm_campaign=6459244691&ad_type=text&adposition=&gclid=Cj0KCQjw-uH6BRDQARIsAI3I-UcWov8hLYk8oBazPiyJfayp18rtSeMh35fcOG0dfJ1gCE_VJe16JVwaAr_5EALw_wcB")
unknown_art = Resource.create(resource_type: "Introduction to Mental Health", details: "https://screening.mhanational.org/content/what-mental-illness-do-i-have")
domestic_hotline = Resource.create(resource_type: "National Dometic Violence Hotline", details: "https://www.thehotline.org/")
unknown_hotline = Resource.create(resource_type: "Immediate Help: National Helpline", details: "https://www.samhsa.gov/find-help/national-helpline")
ptsd_doc = Resource.create(resource_type: "Therapist", details: "Name: Dr. Smith, Gender: M, Specialty: PTSD, Email Address: drsmith@gmail.com *This Therapist Offers Virtual Appointments")
suicide_doc = Resource.create(resource_type: "Therapist", details: "Name: Dr. Jones, Gender: F, Specialty: Suicidal Thoughts/Self Harm, Email Address: drjones@gmail.com *This Therapist Offers Virtual Appointments")
depression_doc = Resource.create(resource_type: "Therapist", details: "Name: Dr. Cole, Gender: M, Specialty: Depression, Email Address: drcole@gmail.com *This Therapist Offers Virtual Appointments")
anxiety_doc = Resource.create(resource_type: "Therapist", details: "Name: Dr. Moore, Gender: F, Specialty: Anxiety, Email Address: drmoore@gmail.com *This Therapist Offers Virtual Appointments")
addict_doc = Resource.create(resource_type: "Therapist", details: "Name: Dr. Warren, Gender: F, Specialty: Addiction, Email Address: drwarren@gmail.com *This Therapist Offers Virtual Appointments")
domestic_doc = Resource.create(resource_type: "Therapist", details: "Name: Dr. Sanchez, Gender: F, Specialty: Domestic Violence, Email Address: drsanchez@yahoo.com")
eating_doc = Resource.create(resource_type: "Therapist", details: "Name: Dr. Ruby, Gender: M, Specialty: Eating Disorders, Email Address: drruby@aol.com")
ocd_doc = Resource.create(resource_type: "Therapist", details: "Name: Dr. Order, Gender: M, Specialty: OCD, Email Address: drorder@hotmail.com")
bipolar_doc = Resource.create(resource_type: "Therapist", details: "Name: Dr. Lopez , Gender: M, Specialty: Bipolar, Email Address: drlopez@aol.com")
child_doc = Resource.create(resource_type: "Therapist", details: "Name: Dr. Segura, Gender: F, Specialty: Childhood Trauma, Email Address: drsegura@gmail.com")
grief_doc = Resource.create(resource_type: "Therapist", details: "Name: Dr. Frey, Gender: M, Specialty: Grief, Email Address: drfrey@gmail.com")
unknown_doc = Resource.create(resource_type: "Therapist", details: "Name: Dr. Lannister, Gender: F, Specialty: General Therapy, Email Address: drlannister@gmail.com")

# affirming_messages = 

#2 catagory PsychCat that has article/therapist/hotline

## PsychCategory
ptsd = PsychCategory.create(name: "PTSD", user_id: steph.id, resource_id: ptsd_art.id)
suicide = PsychCategory.create(name: "Suicide", user_id: bree.id, resource_id: suicide_art.id)
depression = PsychCategory.create(name: "Depression", user_id: steph.id, resource_id: depression_art.id)
anxiety = PsychCategory.create(name: "Anxiety", user_id: bree.id, resource_id: anxiety_art.id)
addiction = PsychCategory.create(name: "Addiction", user_id: bree.id, resource_id: addict_art.id)
domestic_violence = PsychCategory.create(name: "Domestic Violence", user_id: steph.id, resource_id: domestic_hotline.id)
eating_disorder = PsychCategory.create(name: "Eating Disorder", user_id: bree.id, resource_id: eating_doc.id)
ocd = PsychCategory.create(name: "OCD", user_id: steph.id, resource_id: ocd_doc.id)
bipolar = PsychCategory.create(name: "Bipolar", user_id: bree.id, resource_id: bipolar_doc.id)
childhood_trauma = PsychCategory.create(name: "Childhood Trauma", user_id: bree.id, resource_id: child_doc.id)
grief = PsychCategory.create(name: "Grief", user_id: bree.id, resource_id: grief_doc.id)
unknown = PsychCategory.create(name: "Unknown/I'm Not Sure", user_id: bree.id, resource_id: unknown_doc.id)

# description = Resource.create(resource_type: "description", details: "null")#DSV-5
# criteria = Resource.create()#API
# Association Variables:
# (example) test_kitten = Kitten.create(name: "Mitten", owner_id: antonio.id)
# Additional Variables:

binding.pry
0