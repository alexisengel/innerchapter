class AddTagToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :tag, foreign_key: true
  end
end
