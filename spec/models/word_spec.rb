require 'rails_helper'

describe Word do
  context 'validations' do
    it { should validate_presence_of(:text) }
    it { should validate_uniqueness_of(:text) }
    it { should validate_presence_of(:representation_issue_count) }
    it { should have_many(:representation_issue_words) }
  end
end
