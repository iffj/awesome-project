class Updatedbname < ActiveRecord::Migration[5.2]
  def change
    rename_column :Prayers, :englisn_note, :english_note
  end
end
