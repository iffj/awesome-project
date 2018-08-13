class AddListidToPrayers < ActiveRecord::Migration[5.2]
  def change
    add_column :prayers, :listid, :integer
  end
end
