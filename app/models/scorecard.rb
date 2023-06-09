class Scorecard < ApplicationRecord
	belongs_to :course
	has_many :players
end
