class CreatePollsTable < ActiveRecord::Migration
  def up
    create_table :polls do |t|
      t.string   :name
      t.text     :description
      t.datetime :deadline

      t.timestamps
    end
  end

  def down
    drop_table :polls
  end
end
