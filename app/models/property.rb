class Property < ActiveRecord::Base
	has_many :descriptors
	belongs_to :sauce
end