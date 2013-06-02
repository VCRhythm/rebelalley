class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
