class CreateAudioPaths < ActiveRecord::Migration
  def change
    create_table :audio_paths do |t|
      t.integer :next
      t.integer :prev
      t.integer :video_id
      t.integer :clip_id
      t.float :start
      t.float :end
      t.float :go

      t.timestamps
    end
  end
end
