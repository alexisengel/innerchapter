class TasksController < ApplicationController
	acts_as_token_authentication_handler_for User, fallback: :none
	def index
		@tasks = Task.all
	end
end
