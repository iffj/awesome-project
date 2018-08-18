class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :prayers, :englishName, :english_prayer
    rename_column :prayers, :englishRecipient, :english_name
    rename_column :prayers, :englishRelation, :english_relationship
    rename_column :prayers, :englishRemark, :english_note

    rename_column :prayers, :name, :prayer
    rename_column :prayers, :recipient, :name
    rename_column :prayers, :relation, :relationship
    rename_column :prayers, :remark, :note
  end
end
