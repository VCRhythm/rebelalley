class AddTypeToClip < ActiveRecord::Migration
  def change
    add_column :clips, :bent, :string
  end
end
