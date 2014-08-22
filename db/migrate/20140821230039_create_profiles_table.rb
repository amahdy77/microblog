class CreateProfilesTable < ActiveRecord::Migration
  def change
  	create_table :profiles do |t|
  		t.string :username
  		t.string :password
  		t.string :city
  		t.string :state
  		t.integer :user_id
  		t.timestamp
  	end
  end
end
