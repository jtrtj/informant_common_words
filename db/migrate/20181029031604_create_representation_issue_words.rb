class CreateRepresentationIssueWords < ActiveRecord::Migration[5.2]
  def change
    create_table :representation_issue_words do |t|
      t.integer :representation_id
      t.references :word, foreign_key: true
    end
  end
end
