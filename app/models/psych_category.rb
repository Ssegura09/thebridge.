class PsychCategory < ActiveRecord::Base

    belongs_to :users
    belongs_to :resources

    def self.psych_category_list
        system("clear")
        puts "Here is a list of common categories of mental disorders."
        puts '___________________________________________'
        puts PsychCategory.all.collect {|psych_category| psych_category.name}
        puts '___________________________________________'
        sleep(2)
        AppCLI.homepage
    end

end
