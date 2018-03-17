class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :author
      t.text :note_entry

      t.timestamps
    end
  end
end
