class AddCompToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :comp, :integer
  end
end
