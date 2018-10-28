require 'rails_helper'

describe RepresentationIssueProcessor do
  context 'instance methods' do
    it '.extract_words_from_issue - returns the issue string split into words without stop words, punctuation, numbers or repeated words' do
     data = { "representation_id": 1, "issue_string": "the Test issue issue 11345 &#@$% [](" }
     expected = ['test', 'issue']
     processor = RepresentationIssueProcessor.new(data)

     expect(processor.extract_words_from_issue).to eq(expected)
    end

    it '.add_words_to_db - adds the extracted words to the database.' do
      data = { "representation_id": 1, "issue_string": "the Test issue issue 11345 &#@$% [](" }
      expected = ['test', 'issue']
      processor = RepresentationIssueProcessor.new(data)

      expect{processor.add_words_to_db}.to change {Word.count}.by(2)
    end
  end
end