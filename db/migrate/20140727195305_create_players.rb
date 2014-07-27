class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :user
      t.integer :number, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
