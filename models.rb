class User < ActiveRecord::Base
	has_one :profile
	validates :fname, presence: true
	validates :lname, presence: true
	validates :email, presence: true
	validates :phone, presence: true
end

class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :posts
	validates :username, presence: true
	validates :password, presence: true
	validates :city, presence: true
	validates :state, presence: true
end

class Post < ActiveRecord::Base
	belongs_to :profile
	validates :title, presence: true
	validates :body, presence: true
end