class Tag < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :segments
  has_and_belongs_to_many :tasks
  has_one :answer
end
