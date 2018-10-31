class CommonWords
  def self.data
    words = Word.order(representation_issue_count: :desc).where("representation_issue_count > ?", 5).limit(500)
    words.map do | word |
      { text: word.text, value: word.representation_issue_count }
    end
  end

  def self.status
    if self.data
      200
    end
  end
end