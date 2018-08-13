class AddEnglishtitleToPrayerlist < ActiveRecord::Migration[5.2]
  def change
    add_column :prayerlists, :englishtitle, :string
  end
end
