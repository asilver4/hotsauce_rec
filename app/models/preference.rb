class Preference < ActiveRecord::Base
	has_many :descriptors
	belongs_to :user
end