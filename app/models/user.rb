class User < ApplicationRecord
	has_and_belongs_to_many :segments
	has_and_belongs_to_many :tags
	devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
    acts_as_token_authenticatable
end
