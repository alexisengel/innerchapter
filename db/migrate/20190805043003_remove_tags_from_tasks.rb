class RemoveTagsFromTasks < ActiveRecord::Migration[5.2]
  def change
  	remove_reference :tasks, :tag
  end
end
