class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :eng_name
      t.string :kor_name

      t.timestamps
    end
  end
end
