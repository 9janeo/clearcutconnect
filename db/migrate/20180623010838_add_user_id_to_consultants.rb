class AddUserIdToConsultants < ActiveRecord::Migration[5.1]
  def change
    add_column :consultants, :user_id, :integer
  end
end
