class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :name
      t.text :description
      t.string :link
      t.string :category
      t.integer :rank

      t.timestamps
    end
  end
end
