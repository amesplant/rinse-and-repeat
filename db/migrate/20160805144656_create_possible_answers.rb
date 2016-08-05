class CreatePossibleAnswers < ActiveRecord::Migration
  def change
    create_table :possible_answers do |t|
      t.string :answer
      t.integer :card_id

      t.timestamps(null: false)
    end
  end
end
