class SegmentsTags < ActiveRecord::Migration[5.2]
  def change
  	create_table :segments_tags, id: false do |t|
      t.belongs_to :segment, index: true
      t.belongs_to :tag, index: true
    end
  end
end
