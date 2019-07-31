class Project < ApplicationRecord
  belongs_to :brand
  has_many :tasks, dependent: :destroy
  has_and_belongs_to_many :segments
end
