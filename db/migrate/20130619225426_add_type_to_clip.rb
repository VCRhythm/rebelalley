class AddTypeToClip < ActiveRecord::Migration
  def change
    add_column :clips, :type, :string
  end
end
