class RepresentationIssueProcessor
  def initialize(rep_params)
    @lobbying_represenntation_id = rep_params[:representation_id]
    @issue                       = rep_params[:issue_string]
  end

  def add_words_to_db
    new_words = extract_words_from_issue
    new_words.map do | word |
      Word.find_or_create_by(text: word)
    end
  end

  def add_representation_issue_words_to_db
    add_words_to_db.each do | new_word |
      RepresentationIssueWord.create(representation_id: @lobbying_represenntation_id, word: new_word)
    end
  end

  def extract_words_from_issue
    stop_words            = /\b(?:#{ %w[to and or the a of by for on].join('|') })\b/i
    allowed_characters    = Regexp.union(/[a-z]/, " ")
    downcased_issue       = @issue.downcase
    issue_with_only_words = downcased_issue.chars.select {|c| c =~ allowed_characters}.join("")
    no_stop_words         = issue_with_only_words.gsub(stop_words, '')
    split_unique_words    = no_stop_words.split.uniq
  end
end