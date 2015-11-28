class Property < ActiveRecord::Base
	belongs_to :descriptor
	belongs_to :sauce
end