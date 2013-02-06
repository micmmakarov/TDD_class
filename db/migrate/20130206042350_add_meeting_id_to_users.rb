class AddMeetingIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :meeting_id, :integer
  end
end
