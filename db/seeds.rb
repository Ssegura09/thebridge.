require_relative '../config/environment'

User.destroy_all
Resource.destroy_all
PsychCategory.destroy_all

# Base Variables:

## User
steph = User.create(full_name: "Stephanie Segura", username: "stephaniesegura", password: "stephanie", age: 27, gender: "F", email_address: "stepsegura@gmail.com", location: "Houston, TX")
bree = User.create(full_name: "Bree Warren", username: "breewarren", password: "bree", age: 27, gender: "F", email_address: "ambreea.warren@gmail.com", location: "Houston, TX")

## Resource
### For App Demonstration:
#### Depression
depression_desc = Resource.create(resource_type: "Description", details: "Depression (major depressive disorder) is a common and serious medical illness that negatively affects how you feel, the way you think and how you act. Fortunately, it is also treatable. Depression causes feelings of sadness and/or a loss of interest in activities once enjoyed. It can lead to a variety of emotional and physical problems and can decrease a person’s ability to function at work and at home.")
depression_art = Resource.create(resource_type: "Articles", details: "What is Depression?: https://www.psychiatry.org/patients-families/depression/what-is-depression")
depression_doc = Resource.create(resource_type: "Therapists", details: "Name: Dr. Cole, Gender: M, Specialty: Depression, Email Address: drcole@gmail.com *This Therapist Offers Virtual Appointments")
depression_hotline = Resource.create(resource_type: "Helplines", details: "SAMHSA’s National Helpline – 1-800-662-HELP (4357)")
depression_criteria = Resource.create(resource_type: "Criteria", details: "DSM-5 American Psychiatric Association has the following criteria in order for one to be clinically diagnosed with depression: https://www.medscape.com/answers/286759-14692/what-are-the-dsm-5-criteria-for-diagnosis-of-major-depressive-disorder-clinical-depression")

###Others
ptsd_art = Resource.create(resource_type: "Articles", details: "Ways to Cope with PTSD: https://www.verywellmind.com/ways-of-coping-with-anxiety-2797619")
suicide_art = Resource.create(resource_type: "Articles", details: "Self-harm Coping Tips: https://www.themix.org.uk/mental-health/self-harm/self-harm-coping-tips-and-distractions-5696.html")
anxiety_art = Resource.create(resource_type: "Articles", details: "15 Best Guided Meditation for Anxiety on Youtube: https://theanxietymeditation.com/best-guided-meditation-for-anxiety/")
addict_art = Resource.create(resource_type: "Articles", details: "Resources for Addiction: https://www.drugabuse.gov/publications/principles-drug-addiction-treatment-research-based-guide-third-edition/resources")
eating_art = Resource.create(resource_type: "Articles", details: "Eating Disorder Doctors and Clinicians: https://www.eatingrecoverycenter.com/treatment-e1va/about-us?st-t=ppc_houston&vt-n=g&vt-k=%2Beating%20%2Bdisorder%20doctors&urlparam=13houston&gclid=Cj0KCQjw-uH6BRDQARIsAI3I-UcOHwTC0qFs22jm-tfEJ6zqzsPOKNBmPnbGOKVSiTSuwTToP-hfEkEaAhUtEALw_wcB")
ocd_art = Resource.create(resource_type: "Articles", details: "OCD: What to know: https://www.nami.org/About-Mental-Illness/Mental-Health-Conditions/Obsessive-compulsive-Disorder")
bipolar_art = Resource.create(resource_type: "Articles", details: "Am I Bipolar? 8 Signs of Being Bipolar: https://www.betterhelp.com/advice/bipolar/am-i-bipolar-8-signs-of-being-bipolar/?utm_source=AdWords&utm_medium=Search_PPC_c&utm_term=_b&utm_content=88831678748&network=g&placement=&target=&matchtype=b&utm_campaign=6459244691&ad_type=text&adposition=&gclid=Cj0KCQjw-uH6BRDQARIsAI3I-UcWov8hLYk8oBazPiyJfayp18rtSeMh35fcOG0dfJ1gCE_VJe16JVwaAr_5EALw_wcB")
unknown_art = Resource.create(resource_type: "Articles", details: "Introduction to Mental Health: https://screening.mhanational.org/content/what-mental-illness-do-i-have")
domestic_hotline = Resource.create(resource_type: "Helplines", details: "National Dometic Violence Hotline: https://www.thehotline.org/")
unknown_hotline = Resource.create(resource_type: "Helplines", details: "Immediate Help: National Hotline: https://www.samhsa.gov/find-help/national-helpline")
ptsd_doc = Resource.create(resource_type: "Therapists", details: "Name: Dr. Smith, Gender: M, Specialty: PTSD, Email Address: drsmith@gmail.com *This Therapist Offers Virtual Appointments")
suicide_doc = Resource.create(resource_type: "Therapists", details: "Name: Dr. Jones, Gender: F, Specialty: Suicidal Thoughts/Self Harm, Email Address: drjones@gmail.com *This Therapist Offers Virtual Appointments")
anxiety_doc = Resource.create(resource_type: "Therapists", details: "Name: Dr. Moore, Gender: F, Specialty: Anxiety, Email Address: drmoore@gmail.com *This Therapist Offers Virtual Appointments")
addict_doc = Resource.create(resource_type: "Therapists", details: "Name: Dr. Warren, Gender: F, Specialty: Addiction, Email Address: drwarren@gmail.com *This Therapist Offers Virtual Appointments")
domestic_doc = Resource.create(resource_type: "Therapists", details: "Name: Dr. Sanchez, Gender: F, Specialty: Domestic Violence, Email Address: drsanchez@yahoo.com")
eating_doc = Resource.create(resource_type: "Therapists", details: "Name: Dr. Ruby, Gender: M, Specialty: Eating Disorders, Email Address: drruby@aol.com")
ocd_doc = Resource.create(resource_type: "Therapists", details: "Name: Dr. Order, Gender: M, Specialty: OCD, Email Address: drorder@hotmail.com")
bipolar_doc = Resource.create(resource_type: "Therapists", details: "Name: Dr. Lopez , Gender: M, Specialty: Bipolar, Email Address: drlopez@aol.com")
child_doc = Resource.create(resource_type: "Therapists", details: "Name: Dr. Segura, Gender: F, Specialty: Childhood Trauma, Email Address: drsegura@gmail.com")
grief_doc = Resource.create(resource_type: "Therapists", details: "Name: Dr. Frey, Gender: M, Specialty: Grief, Email Address: drfrey@gmail.com")
unknown_doc = Resource.create(resource_type: "Therapists", details: "Name: Dr. Lannister, Gender: F, Specialty: General Therapy, Email Address: drlannister@gmail.com")

#2 catagory PsychCat that has article/therapist/hotline

## PsychCategory
ptsd = PsychCategory.create(name: "PTSD", user_id: nil, resource_id: ptsd_art.id)
suicide = PsychCategory.create(name: "Suicide", user_id: nil, resource_id: suicide_art.id)
depression = PsychCategory.create(name: "Depression", user_id: steph.id, resource_id: depression_art.id)
anxiety = PsychCategory.create(name: "Anxiety", user_id: bree.id, resource_id: anxiety_art.id)
addiction = PsychCategory.create(name: "Addiction", user_id: nil, resource_id: addict_art.id)
domestic_violence = PsychCategory.create(name: "Domestic Violence", user_id: steph.id, resource_id: domestic_hotline.id)
eating_disorder = PsychCategory.create(name: "Eating Disorder", user_id: nil, resource_id: eating_doc.id)
ocd = PsychCategory.create(name: "Obessive Compulsive Disorder", user_id: steph.id, resource_id: ocd_doc.id)
bipolar = PsychCategory.create(name: "Bipolar Disorder", user_id: nil, resource_id: bipolar_doc.id)
childhood_trauma = PsychCategory.create(name: "Childhood Trauma", user_id: bree.id, resource_id: child_doc.id)
grief = PsychCategory.create(name: "Grief", user_id: bree.id, resource_id: grief_doc.id)
unknown = PsychCategory.create(name: "Unknown/I'm Not Sure", user_id: nil, resource_id: unknown_doc.id)

binding.pry
0