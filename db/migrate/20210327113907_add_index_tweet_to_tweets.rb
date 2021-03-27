class AddIndexTweetToTweets < ActiveRecord::Migration[6.1]
  def change
    add_index :tweets, [:user_id, :tweet], unique: true
  end
end
