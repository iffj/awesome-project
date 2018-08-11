class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :Prayers, :englishName, :english_prayer
    rename_column :Prayers, :englishRecipient, :english_name
    rename_column :Prayers, :englishRelation, :english_relationship
    rename_column :Prayers, :englishRemark, :english_note

    rename_column :Prayers, :name, :prayer
    rename_column :Prayers, :recipient, :name
    rename_column :Prayers, :relation, :relationship
    rename_column :Prayers, :remark, :note
  end
end
