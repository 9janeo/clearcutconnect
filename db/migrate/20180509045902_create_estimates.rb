class CreateEstimates < ActiveRecord::Migration[5.1]
  def change
    create_table :estimates do |t|
      t.string :type
      t.timestamp :start
      t.timestamp :end
      t.string :owner
      t.string :email
      t.string :phone
      t.text :notes

      t.timestamps
    end
  end
end
