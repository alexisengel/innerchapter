class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.date :dob
      t.string :city
      t.string :gender

      t.timestamps
    end
  end
end
