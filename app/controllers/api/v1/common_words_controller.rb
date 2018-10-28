class Api::V1::CommonWordsController < ApplicationController
	def index
		render json: CommonWords.data,
					 status: CommonWords.status
	end

	def create
		processor = RepresentationIssueProcessor.new(rep_params)
	end

	private

	def rep_params
		params.permit([:representation_id, :issue_string])
	end
end