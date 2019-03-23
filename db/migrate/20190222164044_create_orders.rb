class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.datetime :ends_at
      t.string :resturant
      t.attachment :menu
      t.integer :meal
      t.integer :status
      t.string :name
      t.timestamps
    end
  end
end
