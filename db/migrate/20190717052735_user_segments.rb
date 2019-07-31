class UserSegments < ActiveRecord::Migration[5.2]
  def change
  	create_table :segments_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :segment, index: true
    end
  end
end
