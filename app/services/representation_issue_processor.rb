class RepresentationIssueProcessor
  def initialize(rep_params)
    @lobbying_represenntation_id = rep_params[:representation_id]
    @issue                       = rep_params[:issue_string]
    @stop_words                  = /\b(?:#{ %w[to and or the a of by for on].join('|') })\b/i
    @allowed_characters          = Regexp.union(/[a-z]/, " ")
  end

  def parse_issue
    downcased_issue = @issue.downcase
    issue_with_only_words = downcased_issue.chars.select {|c| c =~ @allowed_characters}.join("")
    no_stop_words = issue_with_only_words.gsub(@stop_words, '')
    split_unique_words = no_stop_words.split.uniq
  end
end