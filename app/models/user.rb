class User < ActiveRecord::Base
  attr_accessible :name, :stewie_loving_rate, :meeting_id

  has_one :meeting
end
