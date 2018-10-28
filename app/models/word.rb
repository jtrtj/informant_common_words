class Word < ApplicationRecord
  validates_presence_of :text, :issue_count
  validates_uniqueness_of :text
end