class Preference < ActiveRecord::Base
	has_many :properties as: :describable
end