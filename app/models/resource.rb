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
        AppCLI.homepage
    end

    # def psych_category_description(category)
    #     description = Resource.find_by(resource_type: description)
    #     puts description
    # end

    # def psych_category_criteria(category)
    #     # description = Resource.find_by(resource_type: description)
    #     # puts description
    # end

    # def psych_category_articles(category)
    #     # description = Resource.find_by(resource_type: description)
    #     # puts description
    # end

    # def psych_category_therapists(category)
    #     # description = Resource.find_by(resource_type: description)
    #     # puts description
    # end

    def psych_category_hotline(category)
        # description = Resource.find_by(resource_type: description)
        # puts description
    end
  
end