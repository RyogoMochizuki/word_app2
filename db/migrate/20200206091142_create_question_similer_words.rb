class CreateQuestionSimilerWords < ActiveRecord::Migration[5.1]
  def change
    create_table :question_similer_words do |t|
      t.integer :question_id
      t.string :similer_word

      t.timestamps
    end
  end
end
