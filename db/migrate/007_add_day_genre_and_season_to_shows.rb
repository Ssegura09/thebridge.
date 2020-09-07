class AddDayGenreAndSeasonToShows < ActiveRecord::Migration[5.2]

def change
    add_column :shows, :day, :string
    add_column :shows, :genre, :string
    add_column :shows, :season, :string
end

end