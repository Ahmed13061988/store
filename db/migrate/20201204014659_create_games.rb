class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :title
      t.string :description
      t.string :image
      t.string :price
      t.string :quantity
      t.string :sku
      t.string :cost
      t.belongs_to :owner
      t.timestamps
    end
  end
end
