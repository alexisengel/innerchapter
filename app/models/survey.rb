class Survey < ApplicationRecord
  belongs_to :project
  has_many :questions
end
