class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :name
      t.references :survey, foreign_key: true
      t.references :tags, foreign_key: true

      t.timestamps
    end
  end
end
