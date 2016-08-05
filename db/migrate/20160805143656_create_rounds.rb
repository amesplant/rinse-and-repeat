class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :correct_first_guesses
      t.integer :total_guesses
      t.integer :deck_id
      t.integer :user_id

      t.timestamps(null:false)
    end
  end
end
