class Style < ApplicationRecord
	belongs_to :page
	belongs_to :user
	belongs_to :slection
	belongs_to :measurement
end
