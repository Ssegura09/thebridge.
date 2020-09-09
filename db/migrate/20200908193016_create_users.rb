class CreateUsers < ActiveRecord::Migration[6.0]
  
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :username
      t.string :password
      t.integer :age
      t.string :gender
      t.string :email_address
      t.string :location
    end
  end

end
