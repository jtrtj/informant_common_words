require 'rails_helper'

describe '/api/v1' do
	context '/common_words' do
		it 'returns JSON object of words with their counts' do
			get '/api/v1/common_words'

			results = JSON.parse(response.body)

			expect(results).to be_an(Array)
			expect(results[0]["text"]).to be_a(String)
			expect(results[0]["value"]).to be_a(Integer)
		end
	end
end