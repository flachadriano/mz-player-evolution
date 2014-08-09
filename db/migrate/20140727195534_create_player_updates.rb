class CreatePlayerUpdates < ActiveRecord::Migration
  def change
    create_table :player_updates do |t|
      t.references :player, null: false
      t.integer :value, null: false
      t.integer :salary, null: false
      t.integer :age, null: false
      t.integer :session, null: false
      t.integer :speed, null: false
      t.integer :stamina, null: false
      t.integer :play_intelligence, null: false
      t.integer :passing, null: false
      t.integer :shooting, null: false
      t.integer :header, null: false
      t.integer :keeping, null: false
      t.integer :ball_control, null: false
      t.integer :tackling, null: false
      t.integer :cross_balls, null: false
      t.integer :set_plays, null: false
      t.integer :experience, null: false
      t.integer :form, null: false

      t.timestamps
    end
  end
end
