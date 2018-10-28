require 'rails_helper'

describe Word do
  context 'validations' do
    it { should validate_presence_of(:text) }
    it { should validate_uniqueness_of(:text) }
    it { should validate_presence_of(:issue_count) }
  end
end
