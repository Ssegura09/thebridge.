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
        sleep(3)
        AppCLI.homepage
    end

    def self.specific_category_resources
        self.psych_category_description
        self.psych_category_criteria
        self.psych_category_articles
        self.psych_category_therapists
        self.psych_category_hotline
    end
  
end