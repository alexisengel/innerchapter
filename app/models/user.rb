class User < ApplicationRecord
	has_and_belongs_to_many :segments
	has_and_belongs_to_many :tags
	has_and_belongs_to_many :surveys
	has_many :datasets
	devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
    acts_as_token_authenticatable
    has_many :tasks, through: :datasets
end
