require 'rails_helper'

describe CommonWords do
  context 'Class methods' do
    it "#data - returns jsonable array of words' text and value" do
      data_1 = { "representation_id": 1, "issue_string": "the Test issue issue 11345 &#@$% [](" }
			data_2 = { "representation_id": 1, "issue_string": "the Test issue issue is cool wow" }
			
			RepresentationIssueProcessor.new(data_1).process_issue
      RepresentationIssueProcessor.new(data_2).process_issue
      RepresentationIssueProcessor.new(data_2).process_issue
      RepresentationIssueProcessor.new(data_2).process_issue
      RepresentationIssueProcessor.new(data_2).process_issue
      RepresentationIssueProcessor.new(data_2).process_issue

      
      expect(CommonWords.data[0]).to have_key(:text)
      expect(CommonWords.data[0]).to have_key(:value)
    end

    it "#status - returns response status of 200 if data is present" do
      expect(CommonWords.status).to eq(200)
    end
  end
end

