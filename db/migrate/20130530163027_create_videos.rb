class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :author
      t.integer :vote, default: 0

      t.timestamps
    end
  end
end
