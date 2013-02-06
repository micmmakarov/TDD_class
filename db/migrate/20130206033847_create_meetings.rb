class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :name
      t.datetime :start_time
      t.string :place
      t.integer :user_id

      t.timestamps
    end
  end
end
