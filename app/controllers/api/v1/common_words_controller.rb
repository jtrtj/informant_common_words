class Api::V1::CommonWordsController < ApplicationController
	def index
		render json: CommonWords.data,
					 status: CommonWords.status
	end
end