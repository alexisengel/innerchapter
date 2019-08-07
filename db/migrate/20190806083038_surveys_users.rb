class SurveysUsers < ActiveRecord::Migration[5.2]
  def change
  	create_table :surveys_users, id: false do |t|
      t.belongs_to :survey, index: true
      t.belongs_to :user, index: true
    end
  end
end
