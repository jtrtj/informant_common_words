class RepresentationIssueProcessor
  include WordsNotNeeded

  attr_reader :result,
                :status

  def initialize(rep_params)
    @lobbying_represenntation_id = rep_params[:representation_id]
    @issue = rep_params[:issue_string]
    @result = { message: nil }
    @status = nil
  end

  def process_issue
    if add_representation_issue_words_to_db
      @result[:message] = "Lobbying Representation: #{@lobbying_represenntation_id} issue logged in common words system."
      @status = 201
    else
      @result[:message] = "Invalid issue parameters"
      @status = 400
    end
  end

  def add_representation_issue_words_to_db
    valid_words = RepresentationIssueWord.count
    add_words_to_db.each do | new_word |
      if new_word != nil
        RepresentationIssueWord.create(representation_id: @lobbying_represenntation_id, word: new_word)
      end
    end
    return true if RepresentationIssueWord.count > valid_words
  end

  def add_words_to_db
    new_words = extract_words_from_issue
    new_words.map do | word |
      if word.length > 3
        Word.find_or_create_by(text: word)
      end
    end
  end

  def extract_words_from_issue
    stop_words            = superfluous_words
    allowed_characters    = Regexp.union(/[a-z]/, " ")
    downcased_issue       = @issue.downcase
    issue_with_only_words = downcased_issue.chars.select {|c| c =~ allowed_characters}.join("")
    no_stop_words         = issue_with_only_words.gsub(stop_words, '')
    split_unique_words    = no_stop_words.split.uniq
  end
end
