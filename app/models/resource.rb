class Resource < ActiveRecord::Base

    has_many :psych_categories
    has_many :users, through: :psych_categories

    def self.resource_list
        system("clear")
        puts ''
        puts "Provided is a list of helpful resources that The Bridge offers:"
        puts '___________________________________________'
        puts Resource.all.collect {|resource| resource.resource_type}.uniq
        puts '___________________________________________'
        sleep(2)
        AppCLI.homepage
    end

    def self.psych_category_description
        description = Resource.find_by(resource_type: "Description")
        puts description.details
        sleep(3)
    end

    def self.psych_category_criteria
        criteria = Resource.find_by(resource_type: "Criteria")
        puts criteria.details
        sleep(3)
    end
    
    def self.psych_category_articles
        articles = Resource.find_by(resource_type: "Articles")
        puts articles.details
        sleep(3)
    end

    def self.psych_category_therapists
        therapists = Resource.find_by(resource_type: "Therapists")
        puts therapists.details
        sleep(3)
    end

    def self.psych_category_hotline
        hotlines = Resource.find_by(resource_type: "Helplines")
        puts hotlines.details
        sleep(10)
        AppCLI.homepage
    end

    def self.specific_category_resources
        puts ''
        puts "Description:"
        puts ''
        self.psych_category_description
        puts '___________________________________________'
        puts ''
        puts ''
        puts "Criteria:"
        puts ''
        self.psych_category_criteria
        puts ''
        puts '___________________________________________'
        puts ''
        puts ''
        puts "Article:"
        puts ''
        self.psych_category_articles
        puts ''
        puts '___________________________________________'
        puts ''
        puts ''
        puts "Therapist:"
        puts ''
        self.psych_category_therapists
        puts ''
        puts '___________________________________________'
        puts ''
        puts ''
        puts "Helpline:"
        puts ''
        self.psych_category_hotline
    end
  
end