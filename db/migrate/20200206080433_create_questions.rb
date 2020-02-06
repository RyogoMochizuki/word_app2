class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.text :description
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
