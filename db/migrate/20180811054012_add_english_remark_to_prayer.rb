class AddEnglishRemarkToPrayer < ActiveRecord::Migration[5.2]
  def change
    add_column :prayers, :englishRemark, :string
  end
end
