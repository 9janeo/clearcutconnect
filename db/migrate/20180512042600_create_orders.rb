class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.date :date
      t.string :ordername
      t.integer :ordernumber
      t.boolean :complete
      t.text :servicelist

      t.timestamps
    end
  end
end
