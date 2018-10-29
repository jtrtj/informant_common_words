class RepresentationIssueWord < ApplicationRecord
  validates_presence_of :representation_id, :word_id
  belongs_to :word, counter_cache: :representation_issue_count
end