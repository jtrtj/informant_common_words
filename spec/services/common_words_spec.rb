require 'rails_helper'

describe CommonWords do
  context 'Class methods' do
    it "#data - returns jsonable array of words' text and value" do
      expect(CommonWords.data).to have_key(:text)
      expect(CommonWords.data).to have_key(:value)
    end

    it "#status - returns response status of 200 if data is present" do
      expect(CommonWords.status).to eq(200)
    end
  end
end

