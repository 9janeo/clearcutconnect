class AddCreatedAtIndexToTweets < ActiveRecord::Migration[5.1]
  def change
  	add_index :tweets, [:keyword_id, :created_at]
  end
end
