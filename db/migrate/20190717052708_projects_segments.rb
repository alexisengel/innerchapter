class ProjectsSegments < ActiveRecord::Migration[5.2]
  def change
  	create_table :projects_segments, id: false do |t|
      t.belongs_to :project, index: true
      t.belongs_to :segment, index: true
    end
  end
end
