class Word < ApplicationRecord
  validates_presence_of :text, :representation_issue_count
  validates_uniqueness_of :text
end