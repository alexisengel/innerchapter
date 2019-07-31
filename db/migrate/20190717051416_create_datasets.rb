class CreateDatasets < ActiveRecord::Migration[5.2]
  def change
    create_table :datasets do |t|
      t.references :task, foreign_key: true
      t.references :user, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
