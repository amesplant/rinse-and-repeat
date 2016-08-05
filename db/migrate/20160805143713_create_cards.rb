class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :question
      t.integer :correct_answer_id
      t.integer :deck_id

      t.timestamps(null: false)
    end
  end
end
