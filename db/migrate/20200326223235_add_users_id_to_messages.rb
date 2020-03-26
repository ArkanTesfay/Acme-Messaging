class AddUsersIdToMessages < ActiveRecord::Migration[5.2]
  def change
  	add_column :messages, :users_id, :integer
  end
end
