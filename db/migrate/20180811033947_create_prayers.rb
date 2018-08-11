class CreatePrayers < ActiveRecord::Migration[5.2]
  def change
    create_table :prayers do |t|
      t.string :name
      t.string :recipient
      t.string :relation
      t.string :remark

      t.timestamps
    end
  end
end
