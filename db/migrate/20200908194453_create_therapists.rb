class CreateTherapists < ActiveRecord::Migration[6.0]
  def change
    create_table :therapists do |t|
      t.string :name
      t.string :gender
      t.string :ethnicity
      t.integer :rating
      t.integer :years_experience
      t.string :virtual_sessions
      t.string :email_address
      t.string :psych_category_id
    end
  end
end
