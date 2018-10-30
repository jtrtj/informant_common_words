require 'rails_helper'

describe RepresentationIssueWord do
  context 'validations' do
    it { should validate_presence_of(:representation_id) }
    it { should validate_presence_of(:word_id) }
    it { should belong_to(:word).counter_cache(:representation_issue_count) }
  end
end