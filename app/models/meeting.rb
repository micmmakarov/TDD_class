class Meeting < ActiveRecord::Base
  attr_accessible :name, :place, :start_time, :user_id

  has_many :users
end
