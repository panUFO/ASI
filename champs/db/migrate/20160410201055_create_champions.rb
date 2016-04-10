class CreateChampions < ActiveRecord::Migration[5.0]
  def change
    create_table :champions do |t|
      t.string :nazwa
      t.string :typ
      t.integer :cena

      t.timestamps
    end
  end
end
