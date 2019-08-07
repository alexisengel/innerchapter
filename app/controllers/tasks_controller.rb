class TasksController < ApplicationController
	acts_as_token_authentication_handler_for User, fallback: :none
	def index
		@user = User.find(params["user_id"])
		@all_tasks = []
		@user_tasks = Task.all.joins(:datasets).where('datasets.user_id = ?', @user.id).uniq.pluck(:id)
		@not_done_tasks = Task.where.not(id: @user_tasks)
		@user.tags.each do |tag|
		 	@all_tasks << @not_done_tasks.joins(:tags).where("tags.id = ?", tag.id)
		end
		@tasks = @all_tasks.flatten.uniq
	end
end
