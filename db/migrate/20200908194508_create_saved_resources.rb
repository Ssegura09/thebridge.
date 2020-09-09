class CreateSavedResources < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_resources do |t|
      t.string :name
      t.integer :resource_id
    end
  end
end
