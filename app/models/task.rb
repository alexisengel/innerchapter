class Task < ApplicationRecord
  belongs_to :project
  has_many :datasets, dependent: :destroy
  has_and_belongs_to_many :tags
  has_many :users, through: :datasets
end
