class CreateConsultants < ActiveRecord::Migration[5.1]
  def change
    create_table :consultants do |t|
      t.string :name
      t.text :bio
      t.string :email
      t.string :twitter_handle
      t.string :facebook_url
      t.string :instagram_handle

      t.timestamps
    end
  end
end
