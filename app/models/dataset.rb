class Dataset < ApplicationRecord
  belongs_to :task
  belongs_to :user

  after_create :set_comp

  def set_comp
  	self.user.comp += self.task.comp
  	self.user.save
  end

end
