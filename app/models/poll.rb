class Poll < ActiveRecord::Base
  attr_accessible :name, :description, :deadline

  def ended?
    Time.now > deadline
  end
end
