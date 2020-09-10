class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :resource_type
      t.string :details
    end
  end
end
