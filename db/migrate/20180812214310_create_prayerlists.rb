class CreatePrayerlists < ActiveRecord::Migration[5.2]
  def change
    create_table :prayerlists do |t|
      t.string :title
      t.datetime :last_update

      t.timestamps
    end
  end
end
