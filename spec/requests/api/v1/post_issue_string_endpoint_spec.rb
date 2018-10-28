require 'rails_helper'

describe '/api/v1' do
  context 'POST /common_words' do
    it "will send the issue's ID and string to be added to the db" do
      payload = { "representation_id": 1, "issue_string": "Test issue 11345 &#@$% []("}

      post '/api/v1/common_words', params: payload.to_json

      status = response.status
      result = JSON.parse(response.body)
      expect(status).to be(201)
      expect(result["message"]).to eq("Lobbying Representation: #{payload["representation_id"]} issue logged in common words system.")
    end
  end
end