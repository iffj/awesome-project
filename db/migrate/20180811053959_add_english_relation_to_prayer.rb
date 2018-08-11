class AddEnglishRelationToPrayer < ActiveRecord::Migration[5.2]
  def change
    add_column :prayers, :englishRelation, :string
  end
end
