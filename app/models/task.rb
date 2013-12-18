class Task < ActiveRecord::Base
  validates_presence_of :title

  def completed?
    false
  end
end
