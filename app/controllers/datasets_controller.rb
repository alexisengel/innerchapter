class DatasetsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def create
		@dataset = Dataset.new(dataset_params)
		@dataset.save
		render :show
	end

	def show
		@dataset = Dataset.find(params["id"])
	end

	private

	def dataset_params
		params.require(:dataset).permit(:user_id, :task_id, :content)
	end
end
