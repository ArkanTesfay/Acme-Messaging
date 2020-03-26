class DropmessagesTable < ActiveRecord::Migration[5.2]
 
  	def up
  		drop_table :messages_tables
  		
  	end
  	def down
  		raise ActiveRecord:IrreversibleMigration
  	end
  end

