class CreatePostsTable < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.string :title
  		t.string :body
  		t.integer :profile_id
  		t.timestamp
  	end
  end
end
