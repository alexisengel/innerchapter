class Segment < ApplicationRecord
	has_and_belongs_to_many :users
	has_and_belongs_to_many :projects
	has_and_belongs_to_many :tags

	after_create :add_tags

	def add_tags
		@users = self.tags.last.users 
		@tags = self.tags

		@users.each do |user|
			if (@tags - user.tags).empty?
				self.users << user
			end
		end



		# compare two arrays
		# create array of users
		# create segments users for each user
	end

end
