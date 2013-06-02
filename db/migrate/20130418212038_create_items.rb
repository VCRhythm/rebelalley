class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :content
      t.integer :rank
      t.string :category

      t.timestamps
    end
  end
end
