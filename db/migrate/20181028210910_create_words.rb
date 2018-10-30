class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :text
      t.integer :representation_issue_count, default: 0
    end
  end
end
