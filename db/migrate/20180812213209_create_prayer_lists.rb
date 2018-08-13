class CreatePrayerLists < ActiveRecord::Migration[5.2]
  def change
    create_table :prayer_lists do |t|
      t.string :title
      t.datetime :last_update

      t.timestamps
    end
  end
end
