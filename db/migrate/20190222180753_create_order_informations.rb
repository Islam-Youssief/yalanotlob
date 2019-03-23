class CreateOrderInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :order_informations do |t|
      t.references :order, foreign_key: true
      t.references :user, foreign_key: true
      t.string :item_name
      t.float :item_price
      t.integer :amount
      t.string :comment

      t.timestamps
    end
  end
end
