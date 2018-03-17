class AddValueToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :story_id, :integer
  end
end
