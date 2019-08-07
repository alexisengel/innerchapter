class SurveysController < ApplicationController
	skip_before_action :verify_authenticity_token

	acts_as_token_authentication_handler_for User, fallback: :none
	def show
		@survey = Survey.find(params[:id])
		@questions = @survey.questions
	end
	def create
		# puts params["tags"]
		@user_id = params["user_id"]
		@survey_id = params["survey_id"]

		@user = User.find(@user_id)
		p @user
		@tags = params["tags"]
		@survey = Survey.find(@survey_id)
		p @tags
		@tags.each do |t|
			@tag = Tag.find(t)
			@user.tags << @tag 
		end
		@user.surveys << @survey
	end

	def index
		@user = User.find(params["user_id"])
		@user_surveys = Survey.all.joins(:surveys_users).where('surveys_users.user_id = ?', @user.id).uniq.pluck(:id)
		@surveys = Survey.where.not(id: @user_surveys) 
	end

	private

	def survey_params
		params.require(:addt).permit(:user_id, :tags)
	end
end
