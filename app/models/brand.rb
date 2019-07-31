class Brand < ApplicationRecord
	has_many :projects, dependent: :destroy
end
