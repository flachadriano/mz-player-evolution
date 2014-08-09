class AddNameIntoPlayerData < ActiveRecord::Migration
  def change
  	add_column :player_updates, :name, :string
  end
end
