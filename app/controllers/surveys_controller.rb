class SurveysController < ApplicationController
	skip_before_action :verify_authenticity_token

	acts_as_token_authentication_handler_for User, fallback: :none
	def show
		@survey = Survey.last
		@questions = @survey.questions
	end
	def create
		# puts params["tags"]
		@user_id = params["user_id"]

		@user = User.find(@user_id)
		p @user
		@tags = params["tags"]
		p @tags
		@tags.each do |t|
			@tag = Tag.find(t)
			@user.tags << @tag 
		end
	end

	def index
		@surveys = Survey.all
	end

	private

	def survey_params
		params.require(:addt).permit(:user_id, :tags)
	end
end
