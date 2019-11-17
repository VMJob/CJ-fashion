class User < ApplicationRecord
  has_many :styles
  has_many :selections
end
