class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|

		t.string :text		
		t.string :created_at
		t.string :user_id
		t.string :user_name
		t.string :user_screen_name
		t.string :user_image_url
		t.string :tweet_id
		t.datetime :tweet_created_at
		t.references :keyword
    end
  end
end
