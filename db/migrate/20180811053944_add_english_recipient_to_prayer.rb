class AddEnglishRecipientToPrayer < ActiveRecord::Migration[5.2]
  def change
    add_column :prayers, :englishRecipient, :string
  end
end
