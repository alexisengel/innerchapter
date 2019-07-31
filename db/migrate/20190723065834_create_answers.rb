class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :name
      t.references :question, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
