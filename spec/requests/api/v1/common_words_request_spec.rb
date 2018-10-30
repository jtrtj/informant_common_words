require 'rails_helper'

describe '/api/v1' do
	context 'GET /common_words' do
		it 'returns JSON object of words with their counts' do
			data_1 = { "representation_id": 1, "issue_string": "the Test issue issue 11345 &#@$% [](" }
			data_2 = { "representation_id": 1, "issue_string": "the Test issue issue is cool wow" }
			
			RepresentationIssueProcessor.new(data_1).process_issue
			RepresentationIssueProcessor.new(data_2).process_issue
			
			get '/api/v1/common_words'
			results = JSON.parse(response.body)
			
			expect(status).to eq(200)
			expect(results).to be_an(Array)
			expect(results[0]["text"]).to be_a(String)
			expect(results[0]["value"]).to be_a(Integer)
		end
	end
end