class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :type
      t.string :code
      t.integer :number
      t.integer :cost

      t.timestamps
    end
  end
end
