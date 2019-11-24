class Measurement < ApplicationRecord
	belongs_to :user
	has_many :styles
end
