class CommonWords
  def self.data
    Word.all.map do | word |
      { text: word.text, value: word.representation_issue_count }
    end
  end

  def self.status
    if self.data
      200
    end
  end
end