class CreateMessagesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :messages_tables do |t|
    	t.string :bod
    end
  end
end
