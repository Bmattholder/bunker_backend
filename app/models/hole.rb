class Hole < ApplicationRecord
	belongs_to :course
	has_many :tees
end
