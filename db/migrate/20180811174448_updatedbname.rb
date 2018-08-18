class Updatedbname < ActiveRecord::Migration[5.2]
  def change
    rename_column :prayers, :english_note, :english_note
  end
end
