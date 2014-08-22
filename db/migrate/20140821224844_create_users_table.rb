class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :fname
  		t.string :lname
  		t.string :email
  		t.integer :phone
  		t.boolean :active
  		t.integer :profile_id
  		t.timestamp
  	end
  end
end
