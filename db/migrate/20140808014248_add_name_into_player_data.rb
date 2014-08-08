class AddNameIntoPlayerData < ActiveRecord::Migration
  def change
  	add_column :player_data, :name, :string
  end
end
