class CreatePsychCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :psych_categories do |t|
      t.string :name
      t.integer :user_id
      t.integer :resource_id
    end
  end
end
