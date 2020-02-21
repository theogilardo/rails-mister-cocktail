class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.string :description
      t.timestamps
      t.references :ingredient, foreign_key: true
      t.references :cocktail, foreign_key: true
    end
  end
end
